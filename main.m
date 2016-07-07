% main
A = input("enter a matrix");
numiter = input("enter num of iteration");
option = input("enter # for option");
b = input("enter matrix b");
switch option
case 1
	gassian(A,b)
case 2
	gassian_partial_pivot(A,b)
case 3
	gassian_full_pivot(A,b)
case 4
	cholesky(A)
case 5
	lu_decom(A)
case 6
	power1(A)
case 7
	inv_power(A)
case 8
	QR(A)
case 9
	householder(A)
case 10
	jaccobi()
case 11
	gauss_ssiedel(A)
otherwise
	print("option not correct");
end
