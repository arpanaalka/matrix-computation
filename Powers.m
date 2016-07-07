function[lambda,x,iter,relres]=powr(A,z0,tol,nmax)

norm1=sqrt(z0'*z0);
q=z0/norm1;
q2=q;
relres=tol+1;
iter=0;
z=A*q;
z2=z;
while relres>=tol && iter<=nmax
    lambda=q2'*z2;
    x=q2;
    z2=q2'*A;
	norm1=sqrt(z2'*z2);
    q2=z2/norm1;
    q2=q2';
    y1=q2;
    z2=z2';
    costheta=abs(y1'*x);
    if costheta>5e-2
        iter=iter+1;
	norm1=sqrt((2-lambda*q)'*(2-lambda*q));
        temp=norm1/costheta;
        relres=[temp];
    else
        disp('multiple eigen values');
        break;
    end
end
end
