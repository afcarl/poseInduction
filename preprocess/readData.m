function [rotationData] = readData(cls)
%READDATA Summary of this function goes here
%   Detailed explanation goes here

globals;

pascalData = readDataPascal(cls,'2012');
fname = fullfile(rotationPascalDataDir,cls);
%load(fname,'rotationData');
rotationData = pascalData;
save(fname,'rotationData');

imagenetData = readDataImagenet(cls);
fname = fullfile(rotationImagenetDataDir,cls);
rotationData = imagenetData;
save(fname,'rotationData');

rotationData = horzcat(pascalData,imagenetData);
fname = fullfile(rotationJointDataDir,cls);
save(fname,'rotationData');

end
