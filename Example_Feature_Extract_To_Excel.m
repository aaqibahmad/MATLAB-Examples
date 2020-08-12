%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%reading all jpg images from current directory 
imagefiles = dir('E:\MSc CS - 2nd Semester\MATLAB Programming\Leaf Images Sets\styrax_obassia\*.jpg');  

% Number of files found
nfiles = length(imagefiles); 

% Assign each column names here FOR XL sheet -- these are feature names
% which we extract and write in XL sheet from 2nd row
tableHeaders =  {'Filename','Sum1','Sum0'};


% Export out using xlswrite.
% give name of the Excel file
filename = 'E:\MSc CS - 2nd Semester\MATLAB Programming\data.xlsx';

%assign sheet number here
sheet = 1;

%give starting range
%from 1st to last column it will write, based on number of table headers assigned(here A1-C1)
xlRange = 'A1';


% inbuilt function for excel writing in Matlab
xlswrite(filename, tableHeaders, sheet, xlRange)


%% here  nfiles is total no of files from length function

for ii=1:nfiles
    
%reading files
currentfilename = imagefiles(ii).name;
currentimage = imread(currentfilename);
images{ii} = currentimage;
b{ii}=im2bw(images{ii});

%% To find sum of 0's and 1's
sum1=sum(sum(b{ii}));
[x1,y1]=size(b{ii});
tsum=x1*y1;
sum0=tsum-sum1;


% All features are writing into excel sheet.
% mainArrayToWrite command writes data into an array
% values of variables which you have to write into excel file, store in this given array
mainArrayToWrite =[sum1.', sum0.', m.'];

% Export Main Array to the same file name of a file is data.xlsx and sheet is 1.
filename = 'E:\MSc CS - 2nd Semester\MATLAB Programming\data.xlsx';
sheet = 1;

%reading image name from current directory & store in filenamewrite
%variable
filenamewrite = {imagefiles(ii).name;};

%integer to string conversion (here range[2 to total number of files])
% already heading is in 1st row so ii is 1 and 1 is added so that it can
% start from 2nd row
intstr=int2str(ii+1);

% to write image name in first column and remaining features extracted will
% be written from 2nd column onwards
xlRange =strcat('A',intstr);
xlRange1 =strcat('B',intstr);

%writing every featres from mainArrayToWrite to excel file(2nd row onwards)  
xlswrite(filename,mainArrayToWrite, sheet, xlRange1)

%writing all filenames in 1st column(2nd row onwards)  
xlswrite(filename,filenamewrite, sheet, xlRange)
end
