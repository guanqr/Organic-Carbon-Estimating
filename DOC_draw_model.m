%绘制DOC垂直分布模型示意图，分别为混匀分布和阶梯式分布
clear; clc;

%绘制混匀分布示意图
subplot1 = subplot(121);
fplot(@(x) 125,[0,200],'blue');
fontsize = 16;
set(gca, 'linewidth', 1, 'fontsize', fontsize, 'fontname', 'Times New Roman');
ylabel('\itc\rm(DOC) (mg/m^3)', 'fontsize', fontsize, 'fontname', 'Times New Roman');
xlabel('Depth (m)', 'fontsize', fontsize, 'fontname', 'Times New Roman');
text(15,6,'(a)','fontsize', fontsize, 'fontname', 'Times New Roman');
ylim(subplot1,[0 200]);
box(subplot1,'on');
set(subplot1,'CameraUpVector',[-1 0 0],'XTick',[0 100 200],'YTick',0);

%绘制阶梯式分布示意图
subplot2=subplot(122);
fplot(@(x) 105,[0,60],'blue');
hold on;
fplot(@(x) 135-0.5*x,[60,150],'blue'); 
hold on;
fplot(@(x) 60,[150,200],'blue'); 
hold off;
fontsize = 16;
set(gca, 'linewidth', 1, 'fontsize', fontsize, 'fontname', 'Times New Roman');
ylabel('\itc\rm(DOC) (mg/m^3)', 'fontsize', fontsize, 'fontname', 'Times New Roman');
xlabel('Depth (m)', 'fontsize', fontsize, 'fontname', 'Times New Roman');
text(15,6,'(b)','fontsize', fontsize, 'fontname', 'Times New Roman');
ylim(subplot2,[0 200]);
box(subplot2,'on');
set(subplot2,'CameraUpVector',[-1 0 0],'XTick',[0 100 200],'YTick',0);

set(gcf, 'unit', 'centimeters', 'position', [1 5 20 8]);

%保存图片
saveas(gcf, 'figures/DOC_model.fig');