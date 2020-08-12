% Sample image
im=imread('cameraman.tif'); % sample image

% 4 pixels comprising non-overlapping 2-by-2 neighbourhoods  
im_nw=im(1:60:end,1:60:end);
im_sw=im(2:60:end,1:60:end);
im_se=im(2:60:end,2:60:end);
im_ne=im(1:60:end,2:60:end);

% Select pixel with maximum intensity
im_max=max(cat(3,im_nw,im_sw,im_se,im_ne),[],3);

% Visualize
figure('color','w')

ha=subplot(1,2,1);
imshow(im,imref2d(size(im)))
title(ha,'original','FontSize',20)

ha=subplot(1,2,2);
imshow(im_max,imref2d(size(im_max)))
title(ha,'2x2 max-pool','FontSize',20)