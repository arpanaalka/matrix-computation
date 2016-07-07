function[lambda,x,numiter,relres]=inv_power(A,z0,tol,nmax)

q0=z0/norm(z0);
q2=q;
relres=tol+1;
iter=0;
z=A*q;
while(relres >= tol & iter <=nmax)
	q=z/norm(z);
	z=A*q;
	lamda=q'*z;
	x=q;
	%copy from power
	z2=q2'*A;
	q2=z2/norm(z2);
	q2=q2';
	y'=q2;
	costheta=abs(y'*x);
	if costheta > 5e-2
		iter=iter+1;
		temp=(norm(z-lambda*q))/costheta;
		relres=[relres;temp];
	else
		fprintf("multiple eigen value");
		break;
	end
end
