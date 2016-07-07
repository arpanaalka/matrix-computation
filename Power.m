function[eigen]=Power(A,x,tol,nmax)

d=0;
iter=0;
while(d>=tol & iter<=nmax)
	x=x/x(end);
	x1=A*x;
	d=x1-x;
	x=x1;
	iter=iter+1
end
ei=A*x;
ei=ei'*x;
ei=ei/(x'*x);
eigen=ei

end
