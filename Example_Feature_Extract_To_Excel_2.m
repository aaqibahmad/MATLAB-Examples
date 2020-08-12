clear; clc;
%dd = dir('E:\MSc CS - 2nd Semester\MATLAB Programming\Leaf Images Sets\quercus_macrocarpa\s*.bmp');
%for zz = 1:length(dd)
%img=imread(strcat('E:\MSc CS - 2nd Semester\MATLAB Programming\Leaf Images Sets\quercus_macrocarpa\',dd(zz).name));   
%end
files='E:\MSc CS - 2nd Semester\MATLAB Programming\Leaf Images Sets';
file = dir('E:\MSc CS - 2nd Semester\MATLAB Programming\Leaf Images Sets');
% Get a logical vector that tells which is a directory.
dirFlags = [file.isdir];
% Extract only those that are directories.
subFolders = file(dirFlags);
subFolders = subFolders(3:length(subFolders));
all_files=zeros(1,3);
i=1;
% Print folder names to command window.
for k = 1 : length(subFolders)
  %fprintf('Sub folder #%d = %s\n', k, subFolders(k).name);
    subFolder=subFolders(k).name;
    if ~isfolder([files,'\',subFolder])
      errorMessage = sprintf('Error: The following folder does not exist:\n%s', [files,'\',subFolder]);
      uiwait(warndlg(errorMessage));
      return;
    end
    filePattern = fullfile([files,'\',subFolder], '*.jpg');
    jpegFiles = dir(filePattern);

    for l = 1:length(jpegFiles)
      baseFileName = jpegFiles(l).name;
      fullFileName = fullfile([files,'\',subFolder], baseFileName);
      fprintf(1, 'Now reading %s\n', fullFileName);
      imageArray = imread(fullFileName);
      imshow(imageArray);
      imgray=rgb2gray(imageArray);
      
      counts=imhist(imgray);%use with otsuthresh
      t=otsuthresh(counts);
      %t=graythresh(imgray);%no imhist needed
      
      v=imbinarize(imgray,t);
      v=uint8(v);
      v=1-v;
      
      
      %{
      lab_he=rgb2lab(imageArray);
      ab = lab_he(:,:,2:3);
      ab = im2single(ab);
      nColors = 2;
      pixel_labels = imsegkmeans(ab,nColors,'NumAttempts',5);

      
      
      
        if(strcmp(subFolder,'quercus_phellos') || strcmp(subFolder,'salix_babylonica1'))
            v=imgray<=80;
        else
            v=imgray<=130;
        end
        
      v = pixel_labels==2;
      %}
      
      imred=imageArray(:,:,1);
      imblue=imageArray(:,:,3);
      imgreen=imageArray(:,:,2);
      imred=imred .* v;
      imblue=imblue .* v;
      imgreen=imgreen .* v;
      allfiles(i,1)=k;
      allfiles(i,2)=mean2(imred);
      allfiles(i,3)=mean2(imgreen);
      allfiles(i,4)=mean2(imblue);
      i=i+1;
      n=split(baseFileName,'.');
      n=char(n(1));
      str=[n,'_red.jpg'];
      
      imageArray = imageArray .* uint8(v);
      
      %{
      imageArray(:,:,1)=imred;
      imageArray(:,:,2)=imgreen;
      imageArray(:,:,3)=imblue;
      %}
      imwrite(imageArray,str);
      %num = xlsread('imageArray', -1) %
    end

end
xlswrite('E:\MSc CS - 2nd Semester\MATLAB Programming\results2.xlsx',allfiles);
%{
subplot(2,2,1),imshow(imageArray);
subplot(2,2,2),imshow(imred);
subplot(2,2,3),imshow(imblue);
subplot(2,2,4),imshow(imgreen);
%}      

%myFolder = 'E:\MSc CS - 2nd Semester\MATLAB Programming\Leaf Images Sets\quercus_macrocarpa\';

