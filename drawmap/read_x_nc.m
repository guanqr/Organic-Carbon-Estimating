function [X,Lat,Lon]=read_x_nc(InPath,Name,x)
source = strcat(InPath,Name);
%ncdisp(source);
Lon = ncread(source,'lon');
Lat = ncread(source,'lat'); 
X = ncread(source,x);