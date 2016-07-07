function [Q,R] = QR(A)
[r,c] = size(A);
H = eye(r);
R = A;
for i=1:c-1
	x= R(i:r,i);
        l=length(x);
        y= zeros(l,1);
        y(1)= sqrt(x'*x);;
        k= R(i,i);
        if k>0
		if all(x==y)
	 	    continue;
	   	end
           	w= x-y;
       		else
           	w= x+y;
       end
	w= w/sqrt(w'*w);
	h= eye(l)-2*w*w';
	H1= eye(r);
	H1(i:r,i:r)= h;
	R= H1*R;
	H= H1*H;
end
Q= H';
   
end

