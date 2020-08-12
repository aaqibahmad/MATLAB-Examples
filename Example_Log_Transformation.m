clear;
clc;
img = imread('D:\MSc CS - 2nd Semester\images\1.jpg');
img2 = log10(1+256*im2double(img));
img_gamma=double(img).^(0.6);
img_gamma2=double(img).^(0.4);
img_gamma3=double(img).^(0.3);
img2_1 = [img_gamma - min(img2(:))] ./ max(img_gamma(:) - min(img_gamma(:)));
img2_2 = [img_gamma2 - min(img2(:))] ./ max(img_gamma2(:) - min(img_gamma2(:)));
img2_3 = [img_gamma3 - min(img2(:))] ./ max(img_gamma3(:) - min(img_gamma3(:)));
img3 = rgb2gray(img);
img4 = 1- im2double(img3);
figure;
subplot(2,2,1);imshow(img);title('Original Image');
subplot(2,2,2);imshow(img2_1);title('After 0.6 Gamma Transform');
subplot(2,2,3);imshow(img2_2);title('After 0.4 Gamma Transform');
subplot(2,2,4);imshow(img2_3);title('After 0.3 Gamma Transform');

