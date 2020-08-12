clear; clc;

files='C:\Users\PC-SER\Documents\MATLAB\LeafImages-1';
file = dir('C:\Users\PC-SER\Documents\MATLAB\LeafImages-1');
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
      
      
      
      imred=imageArray(:,:,1);
      imblue=imageArray(:,:,3);
      imgreen=imageArray(:,:,2);
      imred=imred .* v;
      imblue=imblue .* v;
      imgreen=imgreen .* v;
      allfiles(i,1)=k;
      allfiles(i,2)=entropy(imred);
      allfiles(i,3)=entropy(imgreen);
      allfiles(i,4)=entropy(imblue);
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
xlswrite('results_entropy.xlsx',allfiles);
