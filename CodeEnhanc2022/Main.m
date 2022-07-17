clc;
clear;
close all;
%%%%%%%%%%%%%% Read images %%%%%%%%%%%%%%%%%%%

myFolder = './Dataset';
% Check to make sure that folder actually exists.  Warn user if it doesn't.
if ~isdir(myFolder)
  errorMessage = sprintf('Error: The following folder does not exist:\n%s', myFolder);
  uiwait(warndlg(errorMessage));
  return;
end
% Get a list of all files in the folder with the desired file name pattern.
filePattern = fullfile(myFolder, '*.bmp'); % Change to whatever pattern you need.
theFiles = dir(filePattern);
for v = 1 :  length(theFiles)
    baseFileName = theFiles(v).name;
    fullFileName = fullfile(myFolder, baseFileName);
%     fprintf(1, 'Now reading %s\n', fullFileName);
  
    Im= imread(fullFileName);   % reading image files
%%%%% Call Function %%%%%
 [IP,brisqueP]=PeerJCodeFunction(Im)
end
