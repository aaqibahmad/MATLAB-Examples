clear;
clc;
x=imread('D:/MSc CS - 2nd Semester/MATLAB Programming/image1.jpg');
s=size(x);
pl=input('Enter the plane to search frequency in:\n1-Red\n2-Green\n3-Blue\n');
col=x(1:s(1),1:s(2),pl);
n=input('Enter the frequency of pixel to search:');
p=imhist(col);
fprintf('Frequency of %d in the image:',n);
disp(p(n+1));