clear; clc;

%输入2006~2010五年四季的数据
spring=[0.9422; 0.8519; 0.8422; 0.8080; 0.9599];
summer=[1.0317; 1.0376; 1.0054; 0.9942; 1.0800];
autumn=[0.7777; 0.7684; 0.8178; 0.7712; 0.8199];
winter=[0.9361; 0.9030; 0.9633; 0.9864; 0.9701];
season=[spring, summer, autumn, winter];

%绘制图像
x=0:1:4;
b=bar(x, season);
set(b, 'edgecolor', 'none');
h=legend('Spring', 'Summer', 'Autumn', 'Winter', 'Location', 'NorthWest');
set(h, 'Box', 'off');
axis([-0.8, 4.8, 0.7, 1.2]);
set(gca, 'YTick', 0.7:0.1:1.2);
fontsize = 16;
set(gca, 'linewidth', 1, 'fontsize', fontsize, 'fontname', 'Times New Roman');
ylabel('\itc\rm(DOC) (10^3mg/m^3)', 'fontsize', fontsize, 'fontname', 'Times New Roman');   
xlabel('Year','fontsize', fontsize, 'fontname', 'Times New Roman');
set(gca,'XTickLabel', {'2006','2007','2008','2009','2010'});

%保存图片
saveas(gcf, 'figures/DOC_5_years_contrast.fig')