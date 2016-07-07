a=A;
[r,c]=size(a);
l=zeros(r,c);
%if k==r			%base condition
%	exit;
for k=1:r-1
	max=a(k,k);
	m=k;
	for j=1:r
	if(a(j,k)>max)
		max=a(j,k);
		m=j;
	end 
	end
	x=a(k,:);
	a(k,:)=a(j,:);
	a(j,:)=x;
for i=k+1:r
	m(i)=a(i,k)/a(k,k);
		a(i,:)=a(i,:)-m(i)*a(k,:);
	l(i,k)=m(i);
end
a
end
l


