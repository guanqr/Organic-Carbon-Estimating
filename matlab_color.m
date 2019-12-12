%画出海水固有光学量的全球分布伪彩色图

clc;clear all;
InPath = 'F:\CALIOP and code\matlab\MODIS data\';
%ncdisp(strcat(InPath,'A20170012017365.L3m_YR_IOP_a_412_giop_4km.nc')) %获取所读取nc文件的基本信息
source1 = strcat(InPath,'A20170012017365.L3m_YR_IOP_a_412_giop_4km.nc'); 
Lon = ncread(source1,'lon');
Lat = ncread(source1,'lat');
a_412 = ncread(source1,'a_412_giop');
%ncdisp(strcat(InPath,'A20170012017365.L3m_YR_IOP_bb_412_giop_4km.nc'))
source2 = strcat(InPath,'A20170012017365.L3m_YR_IOP_bb_412_giop_4km.nc'); 
bb_412 = ncread(source2,'bb_412_giop');
%% 计算Kd
Kd_412 = a_412+4.18.*bb_412.*(1-0.52.*exp(-10.8.*a_412));%Kd的计算方法 
figure(1)
h=pcolor(Lon,Lat,Kd_412'); 
colormap; 
set(h,'LineStyle','none'); 
colorbar
colorbar('Ticks',[0 1]);%figure 1 编辑——颜色图，打开后可以调整颜色信息，还可以把设定好的colorbar保存下来，下次直接调用
box on
axis([100,130,0,42]);%设置坐标范围，此范围为东海的大致位置
set(gca,'XTick',[100 105 110 115 120 125 130 ],'YTick',[0 7 14 21 28 35 42])
fontsize = 12;
set(gca,'linewidth',1,'fontsize',fontsize,'fontname','Times New Roman');
ylabel('Latitude (°)' ,'fontsize',fontsize,'fontname','Times New Roman');   
xlabel('Longitude (°)' ,'fontsize',fontsize,'fontname','Times New Roman');
title('Kd @412nm  (m^{-1}) ' ,'fontsize',fontsize,'fontname','Times New Roman');
set(gcf,'unit','centimeters','position',[1 5 22 12]);%%%前两项为距离屏幕左下角的距离，x方向和y方向，后两项为图片的大小
set(gcf,'color','white');