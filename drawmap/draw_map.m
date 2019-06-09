function draw_map(Lat,Lon,x,titlename)
figure(1)
h=pcolor(Lon,Lat,x');
colormap; 
set(h,'LineStyle','none'); 
fmin=min(min(x));
fmax=max(max(x));
N=(fmax-fmin)/5;
colorbar
colorbar('Ticks',linspace(fmin,fmax,N)');%figure 1 编辑——颜色图，打开后可以调整颜色信息，还可以把设定好的colorbar保存下来，下次直接调用
box on
axis([100,130,0,42]);%设置坐标范围，此范围为东海的大致位置
set(gca,'XTick',[100 105 110 115 120 125 130 ],'YTick',[0 7 14 21 28 35 42])
fontsize = 12;
set(gca,'linewidth',1,'fontsize',fontsize,'fontname','Times New Roman');
ylabel('Latitude (°)' ,'fontsize',fontsize,'fontname','Times New Roman');   
xlabel('Longitude (°)' ,'fontsize',fontsize,'fontname','Times New Roman');
title(titlename ,'fontsize',fontsize,'fontname','Times New Roman');
set(gcf,'unit','centimeters','position',[1 5 22 12]);%%%前两项为距离屏幕左下角的距离，x方向和y方向，后两项为图片的大小
set(gcf,'color','white');