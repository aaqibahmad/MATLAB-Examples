I = imread('rice.png');
background = imopen(I,strel('disk',15));
J = imsubtract(I,background);
imshow(I);
