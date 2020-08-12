clc;
clear;
x=rgb2gray(imread('D:/MSc CS - 2nd Semester/MATLAB Programming/image1.jpg'));
fprintf('Size of the Image:');
disp(size(x));
n=input('Enter column whose frequency of pixels is to be searched:');
p=imhist(x(:,n));
disp(p);