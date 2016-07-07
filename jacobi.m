function[X]=jacobi(A,b,numiter)
n=1;
[r,c]=size(A);
a=A;
x=zeros(c,1);
x1=zeros(c,1);
d=1;
while(n<=numiter & d >= 10^(-4))
	for i=1:c
		sum1=a(i,:)*x(:,1);
		sum1
		sum1=sum1-a(i,i)*x(i,1);
		x1(i,1)=b(i,1)-sum1;
		x1(i,1)=x1(i,1)./(a(i,i));
	end
	d=abs(x1-x);
	x=x1;
	n=n+1;
end	
X=x;


