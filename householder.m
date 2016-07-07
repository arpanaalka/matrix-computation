function[A]= householder(A)

[r,r]=size(A);

if r<=2 	%base condition
	H=eye(1,1);
	break;
else
	H=zeros(r,r);
	H(1,1)=1;
	e1=zeros(r-1,1);
	e1(1,1)=1;
	x=A(2:r,1);
	c=sqrt(x'*x);
	%c=norm(x);
	y=c*e1;
	z=sqrt((x-y)'*(x-y));
	w=(x-y);
	w=w/z;
	H1 = eye(r-1) - 2*(w*w');
end
H(2:r,2:r) = H1;
A=H*A*H';
A(2:r,2:r) = householder(A(2:r,2:r));
end
