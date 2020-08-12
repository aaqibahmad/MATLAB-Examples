clear;clc;
I = imread('rice.png');
I2 = imread('rice.png');
J = imread('cameraman.tif');
K = imread('peppers.png');
A = uint8(filter2(fspecial('gaussian'), I));
B = imadd(I,J,'uint16');
C = imabsdiff(I,A);
M = [0.30, 0.59, 0.11];
background = imopen(I2,strel('disk',15));
J2 = imsubtract(I2,background);
gray = imapplymatrix(M, K);
bw = imread('text.png');
bw2 = imcomplement(bw);
subplot(3,3,1);
imshow(B, []);
subplot(3,3,2);
imshow(C, []);
subplot(3,3,3);
imshow(gray, []);
subplot(3,3,4);
imshow(imshowpair(bw,bw2,'montage'),[]);