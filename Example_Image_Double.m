img1 = imread('D:\MSc CS - 2nd Semester\images\1.jpg');
img = rgb2gray(img1);
img2 = 1- im2double(img);
figure;
imtool(img1);
subplot(1,2,1);
imshow(img);title("Original");
subplot(1,2,2);
imshow(img2);title("Negative Tranformation");
