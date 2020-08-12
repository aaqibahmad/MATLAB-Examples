clear; clc;
vid = VideoReader('xylophone.mp4');
%numFrames = vid.NumberOfFrames;
figure();
im=cell(1,5);
img=cell(1,5);
for i = 1:5
frames = read(vid, i);
imwrite(frames,['Image' int2str(i), '.jpg']);
im{i} =image(frames);
subplot(3, 5, i);
img1 = imread(sprintf('Image%d.jpg', i));
imshow(img1);

img1=rgb2gray(img1);
subplot(3, 5, i+5);
imshow(img1);

f=[1 1 1; 0 0 0; -1 -1 -1];
imgbw = filter2(f, img1);
subplot(3, 5, i+10);
imshow(imgbw);
end