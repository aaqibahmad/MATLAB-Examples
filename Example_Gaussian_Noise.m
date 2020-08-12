clear;clc;
img = imread('eight.tif');
img2 = imnoise(img, 'salt & pepper',0.5);
img3 = medfilt2(img2);
figure,imshow(img);
figure,imshow(img2);
figure,imshow(img3);