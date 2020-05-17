clear; clc;
InPath = 'POC_data\seasonal\';

%读取2010年夏季Rrs数据
name = 'Rrs_555\A20101722010263.L3m_SNSU_RRS_Rrs_555_4km.nc';
%读取数据，设定坐标经纬度范围
[Rrs_555,Lat,Lon] = read_x_nc(InPath,name,'Rrs_555'); 
%东海海域范围
ind1 = find(Lon>117,1); %东经最小值
ind2 = find(Lon>131,1); %东经最大值
ind3 = find(Lat<23,1); %北纬最小值
ind4 = find(Lat<34,1); %北纬最大值
Rrs = Rrs_555(ind1:ind2,ind4:ind3);

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

%拟合数据
[xData, yData] = prepareCurveData(Rrs, bb);
%设置拟合函数类型
ft = fittype('poly1');
[fitresult, gof] = fit(xData, yData, ft);
%输出拟合图像
h = plot(fitresult, xData, yData ,'+k');
%设定样式
fontsize = 16;
axis([0, 0.025, 0, 0.05]);
set(gca,'linewidth', 1, 'fontsize', fontsize, 'fontname', 'Times New Roman');
ylabel('\it b_b \rm(m^{-1})','fontsize', fontsize, 'fontname', 'Times New Roman');   
xlabel('\it R_{rs} \rm(sr^{-1})','fontsize', fontsize, 'fontname', 'Times New Roman');
hl = legend(h, '\it b_b - R_{rs}', 'Fitting Curve', 'Location', 'SouthEast');
set(hl, 'EdgeColor', 'w')

%保存图片
saveas(gcf, 'figures/bb_Rrs_fitting.fig')