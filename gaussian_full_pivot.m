A;
(r,c)=size(A);
b;
(r,1)=size(b);
Ab(r,c+1)=(A;b);
c=zeros(1,c+1);
rmax=zeros(r,1);

k=1;
for j=1:n
	for l=i:n
		rmax[l]=index(max(a[i]));
	end
	z=index(max(rmax));
	c=a(:,:);
	a(z,:) = a(i,:);
	a(i,:) = c;
	for l=i:n
		cmax=index(max(a(l,1)));
	end
	c=a(z,:);
	a(z,:) = a(i,:);
	a(i,:) = c;
	k=k+1;
	m[i][k]=a[i][k]/a[k][k];
	for i=j+1:n
		a[i][j] = a[i][j] - m[i][k]*a[k][j]; 
	end
end
Ab
