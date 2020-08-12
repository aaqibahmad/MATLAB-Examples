% Matlab Program to solve (nxn) system equation 
% by using Gaussian Elimination method 
clear ; clc ; close all
n = input('Please Enter the size of the equation system  n =   ') ;
C = input('Please Enter the elements of the Matrix C ' ) ;
B = input('Please Enter the elements of the Matrix B ' ) ;
dett = det(C)
if dett == 0
    print('This system unsolvable because det(C) = 0 ')
end
b = b';
A = [ C  b ];
for j = 1:(n)
        A(j,:)=A(j,:)/A(j,j) ;
        for i= 1 : n
            if i~=j
                mult = A(i,j)/A(j,j) ;
                A(i,:)=A(i,:)-(mult*A(j,:));
                A
            end
        end
end
for p=1:n
    fprintf("%d\n",A(p,n+1));
end