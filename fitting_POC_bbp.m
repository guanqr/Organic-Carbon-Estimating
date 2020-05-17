%根据算法拟合POC-bbp数据曲线
clear; clc;
InPath = 'POC_data\seasonal\';

%读取2010年夏季POC数据
name = 'poc\A20101722010263.L3m_SNSU_POC_poc_4km.nc';
%读取数据，设定坐标经纬度范围
[POC,Lat,Lon] = read_x_nc(InPath,name,'poc'); 
%东海海域范围
ind1 = find(Lon>117,1); %东经最小值
ind2 = find(Lon>131,1); %东经最大值
ind3 = find(Lat<23,1); %北纬最小值
ind4 = find(Lat<34,1); %北纬最大值
POC = POC(ind1:ind2,ind4:ind3);

%读取2010年夏季bb数据
name = 'bb_555\A20101722010263.L3m_SNSU_IOP_bb_555_giop_4km.nc';
%读取数据，设定坐标经纬度范围
[bb_555,Lat,Lon] = read_x_nc(InPath,name,'bb_555_giop'); 
%东海海域范围
ind1 = find(Lon>117,1); %东经最小值
ind2 = find(Lon>131,1); %东经最大值
ind3 = find(Lat<23,1); %北纬最小值
ind4 = find(Lat<34,1); %北纬最大值
bb = bb_555(ind1:ind2,ind4:ind3);
bbp = bb-0.0015;

%拟合数据
[xData, yData] = prepareCurveData(bbp, POC);
%设置拟合函数类型
ft = fittype('power1');
opts = fitoptions('Method', 'NonlinearLeastSquares');
opts.Display = 'Off';
opts.StartPoint = [109.039499669993 0.0065783563099195];
[fitresult, gof] = fit(xData, yData, ft, opts);
%输出拟合图像
h = plot(fitresult, xData, yData ,'+k');
%设定样式
fontsize = 16;
axis([0, 0.05, 0, 1500]);
set(gca, 'linewidth', 1, 'fontsize', fontsize, 'fontname', 'Times New Roman');
ylabel('\it c\rm(POC) (mg/m^3)', 'fontsize', fontsize, 'fontname', 'Times New Roman');   
xlabel('\it b_{bp} \rm(m^{-1})', 'fontsize', fontsize, 'fontname', 'Times New Roman');
hl = legend(h, '\it c\rm(POC) - \it b_{bp}', 'Fitting Curve', 'Location', 'NorthEast');
set(hl, 'EdgeColor', 'w');
 
%保存图片
saveas(gcf, 'figures/fitting_POC_bbp.fig');