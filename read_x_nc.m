function [X,Lat,Lon] = read_x_nc(InPath,Name,x)
%读取指定区域数据
source = strcat(InPath,Name);
%ncdisp(source);
Lon = ncread(source,'lon');
Lat = ncread(source,'lat'); 
X = ncread(source,x);