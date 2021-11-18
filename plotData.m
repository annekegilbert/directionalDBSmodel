% visualize the potential field for all 15 models 
% model numbers are based on table 1
% each model .txt file contains x,y,z coordinates and corresponding potential (V)

% select model number
model_number = 1;

% load potential field
data = load(['model_' num2str(model_number) '.txt']);

% plot potential field
figure; scatter3(data(:,1),data(:,2),data(:,3),[],data(:,4),'Marker','.')
    axis equal
    colormap(flipud(jet))
    view([-125 20])
