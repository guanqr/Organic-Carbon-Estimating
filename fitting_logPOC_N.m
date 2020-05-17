%根据NDCI算法拟合数据曲线
clear; clc;
InPath = 'POC_data\seasonal\';

season = 1; %选取拟合数据的季节
if season == 1
    name1 = 'Rrs_555\A20100802010171.L3m_SNSP_RRS_Rrs_555_4km.nc';
    name2 = 'Rrs_443\A20100802010171.L3m_SNSP_RRS_Rrs_443_4km.nc';
    name3 = 'poc\A20100802010171.L3m_SNSP_POC_poc_4km.nc';
elseif season == 2
    name1 = 'Rrs_555\A20101722010263.L3m_SNSU_RRS_Rrs_555_4km.nc';
    name2 = 'Rrs_443\A20101722010263.L3m_SNSU_RRS_Rrs_443_4km.nc';
    name3 = 'poc\A20101722010263.L3m_SNSU_POC_poc_4km.nc';
elseif season == 3
    name1 = 'Rrs_555\A20102642010354.L3m_SNAU_RRS_Rrs_555_4km.nc';
    name2 = 'Rrs_443\A20102642010354.L3m_SNAU_RRS_Rrs_443_4km.nc';
    name3 = 'poc\A20102642010354.L3m_SNAU_POC_poc_4km.nc';
elseif season == 4
    name1 = 'Rrs_555\A20103552011079.L3m_SNWI_RRS_Rrs_555_4km.nc';
    name2 = 'Rrs_443\A20103552011079.L3m_SNWI_RRS_Rrs_443_4km.nc';
    name3 = 'poc\A20103552011079.L3m_SNWI_POC_poc_4km.nc';
end
[Rrs_555,~,~] = read_x_nc(InPath,name1,'Rrs_555');
[Rrs_443,~,~] = read_x_nc(InPath,name2,'Rrs_443');
[poc,Lat,Lon] = read_x_nc(InPath,name3,'poc');
ind1 = find(Lon>117,1);
ind2 = find(Lon>131,1);
ind3 = find(Lat<23,1);
ind4 = find(Lat<34,1);
Rrs555 = Rrs_555(ind1:ind2,ind4:ind3);
Rrs443 = Rrs_443(ind1:ind2,ind4:ind3);
POC = poc(ind1:ind2,ind4:ind3);
N = (Rrs555-Rrs443)./(Rrs555+Rrs443);
LOGPOC = log10(POC);

%拟合函数
[xData, yData] = prepareCurveData(N, LOGPOC);
ft = fittype({'x^3', 'x^2', 'x', '1'}, 'independent', 'x', 'dependent', 'y', 'coefficients', {'a', 'b', 'c', 'd'});
[fitresult, gof] = fit(xData, yData, ft);

%绘制图像
h = plot(fitresult, xData, yData, '+k');
%设定样式
fontsize = 16;
axis([-1, 1, 1, 4]);
set(gca, 'linewidth', 1, 'fontsize', fontsize, 'fontname', 'Times New Roman');
ylabel('log(\itc\rm(POC)\rm)', 'fontsize', fontsize, 'fontname', 'Times New Roman');   
xlabel('\it N', 'fontsize', fontsize, 'fontname', 'Times New Roman');
hl = legend(h, 'log(\itc\rm(POC)\rm) - \it N', 'Fitting Curve', 'Location', 'SouthEast');
set(hl, 'EdgeColor', 'w')
 
%保存图片
saveas(gcf, 'figures/fitting_logPOC_N.fig');