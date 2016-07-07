%function [A,b]=lu(A)
a=A;
[r,c]=size(a);
l=zeros(r,c-1);
%if k==r			%base condition
%	exit;
for k=1:r-1
for i=k+1:r
	m(i)=a(i,k)/a(k,k);
		a(i,:)=a(i,:)-m(i)*a(k,:);
	l(i,k)=m(i);
end
a
end
%l


