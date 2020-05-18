%%绘制2010年南海表层POC浓度逐月对比图和分布图
clear; clc;
InPath = 'data\monthly\poc\';

%分月份读取数据
name = {'A20100012010031.L3m_MO_POC_poc_4km.nc',...
        'A20100322010059.L3m_MO_POC_poc_4km.nc',...
        'A20100602010090.L3m_MO_POC_poc_4km.nc',...
        'A20100912010120.L3m_MO_POC_poc_4km.nc',...
        'A20101212010151.L3m_MO_POC_poc_4km.nc',...
        'A20101522010181.L3m_MO_POC_poc_4km.nc',...
        'A20101822010212.L3m_MO_POC_poc_4km.nc',...
        'A20102132010243.L3m_MO_POC_poc_4km.nc',...
        'A20102442010273.L3m_MO_POC_poc_4km.nc',...
        'A20102742010304.L3m_MO_POC_poc_4km.nc',...
        'A20103052010334.L3m_MO_POC_poc_4km.nc',...
        'A20103352010365.L3m_MO_POC_poc_4km.nc'};

%计算表层浓度均值
sum = ones(12);
figure(1);
for k = 1:12
    [poc,Lat,Lon] = read_x_nc(InPath, name{k}, 'poc');
    ind1 = find(Lon>109,1);
    ind2 = find(Lon>122,1);
    lon1 = Lon(ind1:ind2);
    ind3 = find(Lat<3,1);
    ind4 = find(Lat<24,1);
    lat1 = Lat(ind4:ind3);
    POC = poc(ind1:ind2,ind4:ind3);
    sum(k) = get_POC(POC);
    subplot(4, 3, k);
    POC(POC>500) = 500;
    draw_map(lat1, lon1, POC, 'SCS');
end
set(gcf, 'unit', 'centimeters', 'position', [0 0 26 50]);
fname = 'figures/POC_monthly_contrast_2010_SCS.fig'; %以年份为文件名保存
saveas(gcf, fname);


%绘制图像
figure(2);
x = 1:1:12;
p = plot(x, sum, '-*b');
set(gcf, 'unit', 'centimeters', 'position', [1 5 20 10]);
fontsize = 16;
set(gca, 'linewidth', 1, 'fontsize', fontsize, 'fontname', 'Times New Roman');
ylabel('\itc\rm(POC) (mg/m^3)', 'fontsize', fontsize, 'fontname', 'Times New Roman');   
xlabel('Month', 'fontsize', fontsize, 'fontname', 'Times New Roman');
axis([1, 12, 50, 100]);
set(gca,'XTick', [1:1:12]);
set(gca,'YTick', [50:10:100]);

%保存图片
saveas(gcf,'figures/POC_monthly_contrast_SCS.fig');