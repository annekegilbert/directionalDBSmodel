
% Directional DBS Volume Conductor Voltage Distribution Data

% Model numbers are based on table 1 from the paper
% Each model_#.txt file contains x,y,z coordinates (mm) and Ve (V)

% Voltage distribution (Ve) was calculated with 
% - active contact 2
% - left DBS lead
% - center of contact 1 at (0,0,0)
% - lead geometry based on the Boston Scientific directional DBS lead (2202)

%% Get voltage at any coordinate

clc; clear;

% select model number
model_number = input('which model number (1-15)? ');
% model_number = 1;

 % select coordinate
 x = input('x coordinate = ');
 y = input('x coordinate = ');
 z = input('x coordinate = ');
%  x = 0;
%  y = 1;
%  z = 2;

% load voltage distribution data
data = load(['model_' num2str(model_number) '.txt']);

% interpolate voltage at coordinate
warning('off') 
Ve = griddata(data(:,1),data(:,2),data(:,3),data(:,4),x,y,z,'nearest');

% display result
 disp(['The voltage at (' num2str(x) ',' num2str(y) ',' num2str(z) ')'...
     ' is ' num2str(Ve) 'V'])