clear;clc;
img=imread('cameraman.tif');
img2=imread('circuit.tif');
imgd=im2double(img);
imgd2=im2double(img2);
f=[-2 0 2;0 0 0;-1 0 1];
f1=[0 0 0;1 1 1;0 0 0];
f2=[0 0 0;1 1 1;1 1 1];
f3=[-3 -2 -1 0 1;2 3 4 5 -5;-4 -3 -2 -1 0;1 2 3 4 5;-5 -4 -3 -2 -1];
f4=[-3 -2 -1 0 1;2 3 4 5 -5;0 0 0 0 0;0 0 0 0 5;-5 -4 -3 -2 -1];
f5=ones(5,5)/25;
f6=ones(11,11)/121;
f7=[1 1 1;0 0 0;-1 -1 -1];
f8=[1 1 1;1 1 1;1 1 1];
f9=[1 0 -1;1 0 -1;1 0 -1];
J = stdfilt(img2);
%img1=filter2(f,imgd);
img1=edge(imgd);
img2=filter2(f1,imgd);
img3=filter2(f2,imgd);
img4=filter2(f3,imgd);
img5=filter2(f4,imgd);
img6=filter2(f5,imgd);
img7=filter2(f6,imgd);
img8=filter2(f7,imgd);
img9=filter2(f8,imgd);
img10=filter2(f9,imgd);
subplot(2,6,1),imshow(img),title('original');
subplot(2,6,2),imshow(img1),title('Only Edge');
subplot(2,6,3),imshow(img2),title('Bright Less');
subplot(2,6,4),imshow(img3),title('Bright More');
subplot(2,6,5),imshow(img4),title('Edges Less');
subplot(2,6,6),imshow(img5),title('Edges More');
subplot(2,6,7),imshow(img6),title('Blurring Less');
subplot(2,6,8),imshow(img7),title('Blurring More');
subplot(2,6,9),imshow(img8),title('Rough Image');
subplot(2,6,10),imshow(img10),title('Grainy Image');
subplot(2,6,11),imshow(J,[]),title('Standard Deviation');