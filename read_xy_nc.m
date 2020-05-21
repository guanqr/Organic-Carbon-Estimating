function [X,Y,Lat,Lon]=read_x_nc(InPath,Name,x,y)
source = strcat(InPath,Name);
%ncdisp(source);
Lon = ncread(source,'lon');
Lat = ncread(source,'lat'); 
X = ncread(source,x);
Y = ncread(source,y);
