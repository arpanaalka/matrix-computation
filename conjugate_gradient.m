% conjugate gradiant 
r=b;
d=r;
x=0;
i=0;
while ( r'*r >tol) & (i<maxiter)
	i=i+1;
	%alpha(i)=r(i)'*r(i);
	%alpha(i)=alpha(i)/(d(i)'*A*d(i));
	%x(i+1)=x(i)+alpha(i)*d(i);
	%r(i+1)=r(i) -alpha(i)*A*d(i);
	%beta(i+1)=r(i+1)'*r(i+1);
	%beta(i+1)=beta(i+1)/r(i)'*r(i);
	%d(i+1)=r(i+1) + beta(i+1)*d(i) 

	alpha=r'*r;
	alpha=alpha/(d'*A*d);
	x=x+alpha*d;
	rp=r;
	r=r-alpha*A*d;
	beta1=r'*r;
	beta1=beta1/(rp'*rp);
	d=r + beta1*d;
	
end
x
	
	
 
	

