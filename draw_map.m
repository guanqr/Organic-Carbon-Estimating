function draw_map(Lat,Lon,x,titlename)
figure(1)
h=pcolor(Lon,Lat,x');
mcolor=load('mcolor.mat');
mcolor=mcolor.mcolor;
colormap(mcolor) 
set(h,'LineStyle','none'); 

colorbar
colorbar('Ticks',[0 200 400 600 800 1000 1200 1400]);%figure 1 编辑——颜色图，打开后可以调整颜色信息，还可以把设定好的colorbar保存下来，下次直接调用
%colorbar('Ticks',[0 50 100 150 200 250 300 350 400 450 500 550 600]);
box on
axis([117,131,23,34]);%设置坐标范围，此范围为东海的大致位置
%axis([109,122,3,24]);
set(gca,'XTick',[117 120 125 130],'YTick',[23 24 26 28 30 32 34 36 38 40])
%set(gca,'XTick',[109 112 115 122],'YTick',[3,6,9,12,15,18,21,24])
fontsize = 12;
set(gca,'linewidth',1,'fontsize',fontsize,'fontname','Times New Roman');
ylabel('Latitude (°)' ,'fontsize',fontsize,'fontname','Times New Roman');   
xlabel('Longitude (°)' ,'fontsize',fontsize,'fontname','Times New Roman');
title(titlename ,'fontsize',fontsize,'fontname','Times New Roman');
set(gcf,'unit','centimeters','position',[1 5 20 15]);
%set(gcf,'unit','centimeters','position',[1 1 28 96]);%%%前两项为距离屏幕左下角的距离，x方向和y方向，后两项为图片的大小
set(gcf,'color','white');