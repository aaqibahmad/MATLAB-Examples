clear;clc;
RGB = imread('saturn.png');
        I = rgb2gray(RGB);
        J = imnoise(I,'gaussian',0,0.005);
        K = wiener2(J,[5 5]);
        figure, imshow(RGB)
        figure, imshow(J), figure, imshow(K)   