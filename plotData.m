
% Directional DBS Volume Conductor Voltage Distribution Data

% Model numbers are based on table 1 from the paper
% Each model_#.txt file contains x,y,z coordinates (mm) and Ve (V)

% Voltage distribution (Ve) was calculated with 
% - active contact 2
% - left DBS lead
% - center of contact 1 at (0,0,0)
% - lead geometry based on the Boston Scientific directional DBS lead (2202)

%% Visualize the voltage distribution

% select model number
model_number = input('which model number (1-15)? ');
% model_number = 1;

% load voltage distribution data
data = load(['model_' num2str(model_number) '.txt']);

% plot voltage distribution data
figure; scatter3(data(:,1),data(:,2),data(:,3),[],data(:,4),'Marker','.')
    axis equal
    colormap(flipud(jet))
    view([-125 20])

