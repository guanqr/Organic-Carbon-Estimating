function [avg,k1,DOC,lat1,lon1]=get_DOC(s,season,InPath)
% name =  strcat(season,'RRS_Rrs_412_4km.nc');
% [Rrs_412,Lat,Lon] = read_x_nc(InPath,name,'Rrs_412');

name1 = strcat('Rrs_531\', season,'RRS_Rrs_531_4km.nc');
[Rrs_531, ~, ~] = read_x_nc(InPath,name1,'Rrs_531');

name2 = strcat('Rrs_667\', season,'RRS_Rrs_667_4km.nc');
[Rrs_667,Lat,Lon] = read_x_nc(InPath,name2,'Rrs_667');

ind1=find(Lon>117,1);
ind2=find(Lon>131,1);
lon1 = Lon(ind1:ind2);
ind3 = find(Lat<23,1);
ind4 = find(Lat<34,1);
lat1 = Lat(ind4:ind3);

% %珠海模拟的算法基于667和412的遥感反射比
% Rb=Rrs_667(ind1:ind2,ind4:ind3)./Rrs_412(ind1:ind2,ind4:ind3);
% Rb(Rb<0)=0;
% DOC=10^(-0.2614)*Rb.^1.2419;
% k1=max(max(DOC));
% %DOC(DOC>9)=9;

%太湖模拟的算法基于667和531的遥感反射比
 Rb=Rrs_667(ind1:ind2,ind4:ind3)./Rrs_531(ind1:ind2,ind4:ind3);
 Rb(Rb<0)=0;
 DOC=10^1.007*Rb.^0.654*1000;
 switch s
     case 1
         DOC=DOC/2.419*0.96;
     case 2
         DOC=DOC/2.539*1.08;
     case 3
         DOC=DOC/2.755*0.82;
     case 4
         DOC=DOC/2.7*0.97;
 end
         
         
 %*0.3658;
 k1=max(max(DOC));

 %DOC(DOC>6)=6;

avg=nanmean(nanmean(DOC));

% %获取DOC表层总量
% Y=DOC;
% Y(isnan(Y)) = 0;
% [x,y]=size(Y);
% h=sum(Y);
% h1=h(1)+h(y);
% l=sum(Y,2);
% l1=l(1)+l(x);
% sd=4*sum(sum(Y))-2*h1-2*l1+Y(1)+Y(1,y)+Y(x,1)+Y(x,y);
% sd=sd/4*1.6e+07;
