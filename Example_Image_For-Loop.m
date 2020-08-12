image = cell(1,3);
x = cell(1,3);
c = cell(1,3);
for i=1:3
    c{i}=imread(sprintf('C:\\Users\\aaqib\\Desktop\\images\\%d.jpg', i));
    subplot(2,2,i);
    imshow(c{i});
    imgd{i} = rgb2gray(c{i});
    f1 = [4,0,3; 0,2,1; 1,0,2];
    x{i} = filter2(f1,imgd{i});
    subplot(2,3,i+3);
    imshow(x{i});
end