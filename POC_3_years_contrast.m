x = 1:1:4;

%输入Two-Step算法计算数据
%a0为2010年计算数据，b0为2012年计算数据，c0为2013年计算数据
%a1为2010年NASA数据，b1为2012年NASA数据，c1为2013年NASA数据
a0 = [1.743875183503403e+02, 1.224200165464861e+02, 1.402228207872768e+02, 1.646477651626581e+02];
a1 = [1.743451906288878e+02, 1.159501879968959e+02, 1.390214871452374e+02, 1.689588098409557e+02];
b0 = [1.706779884349942e+02, 1.220053663323891e+02, 1.325393303079370e+02, 1.571111510411190e+02];
b1 = [1.819375570870071e+02, 1.043123522039488e+02, 1.317532663126624e+02, 1.553330920847250e+02];
c0 = [1.829352734647934e+02, 1.227372023179262e+02, 1.265656402437232e+02, 1.639694385860135e+02];
c1 = [1.341011175059516e+02, 1.078149705051789e+02, 1.326699804280721e+02, 1.541484067297997e+02];

%绘制图像
p = plot(x, a0, '-ob', x, b0, '-or', x, c0, '-og', x, a1, '--*b', x, b1, '--*r', x, c1, '--*g');
set(p, 'linewidth', 1.2);
h = legend(p, '2010Cal', '2012Cal', '2013Cal', '2010NASA', '2012NASA', '2013NASA', 'Location', 'SouthEast');
set(h,'Box', 'off', 'FontSize', 10);
fontsize = 16;
set(gca, 'linewidth', 1, 'fontsize', fontsize, 'fontname', 'Times New Roman');
ylabel('\itc\rm(POC) (mg/m^3)', 'fontsize', fontsize, 'fontname', 'Times New Roman');   
xlabel('Season', 'fontsize', fontsize, 'fontname', 'Times New Roman');
axis([1, 4, 100, 190]);
set(gca,'XTick', [1:1:4]);
set(gca,'YTick', [100:10:190]);
name = {'Spring', 'Summer', 'Autumn', 'Winter'};
set(gca, 'XTickLabel', name);

%保存图片
saveas(gcf,'figures/POC_3_years_contrast.fig')