%绘制2010年表层POC浓度分布图
clear; clc;
InPath = 'POC_data\seasonal\Rrs_555\';

%绘制夏季分布图（因为夏季POC的colorbar区域范围最大，以夏季的colorbar作为标准）
name = 'A20101722010263.L3m_SNSU_RRS_Rrs_555_4km.nc';
%读取数据，设定坐标经纬度范围
[Rrs_555,Lat,Lon] = read_x_nc(InPath,name,'Rrs_555'); 
%东海海域范围
ind1 = find(Lon>117,1); %东经最小值
ind2 = find(Lon>131,1); %东经最大值
lon1 = Lon(ind1:ind2);
ind3 = find(Lat<23,1); %北纬最小值
ind4 = find(Lat<34,1); %北纬最大值
lat1 = Lat(ind4:ind3);
Rrs = Rrs_555(ind1:ind2,ind4:ind3);

%计算POC浓度
bb = 2.109*Rrs-0.001186;
bbp = bb-0.0015;
bbp(bbp<0) = 0;
POC = 2607*bbp.^0.4975;

%绘制夏季浓度分布图
subplot(222);
draw_map(lat1,lon1,POC);
text(118,33,'(b)','fontsize', 14, 'fontname', 'Times New Roman');
temp1 = caxis;

%计算夏季浓度均值
sum2 = get_POC(POC);

%绘制春季分布图
name = 'A20100802010171.L3m_SNSP_RRS_Rrs_555_4km.nc';
[Rrs_555,Lat,Lon] = read_x_nc(InPath,name,'Rrs_555');

ind1 = find(Lon>117,1);
ind2 = find(Lon>131,1);
lon1 = Lon(ind1:ind2);
ind3 = find(Lat<23,1);
ind4 = find(Lat<34,1);
lat1 = Lat(ind4:ind3);
Rrs = Rrs_555(ind1:ind2,ind4:ind3);

bb = 1.623*Rrs-0.000162;
bbp = bb-0.0015;
bbp(bbp<0) = 0;
POC = 1359*bbp.^0.3252;

subplot(221);
draw_map(lat1,lon1,POC);
text(118,33,'(a)','fontsize', 14, 'fontname', 'Times New Roman');
caxis(temp1);

sum1 = get_POC(POC);

%绘制秋季分布图
name = 'A20102642010354.L3m_SNAU_RRS_Rrs_555_4km.nc';
[Rrs_555,Lat,Lon] = read_x_nc(InPath,name,'Rrs_555');

ind1 = find(Lon>117,1);
ind2 = find(Lon>131,1);
lon1 = Lon(ind1:ind2);
ind3 = find(Lat<23,1);
ind4 = find(Lat<34,1);
lat1 = Lat(ind4:ind3);
Rrs = Rrs_555(ind1:ind2,ind4:ind3);

bb = 1.787*Rrs-0.0006908;
bbp = bb-0.0015;
bbp(bbp<0) = 0;
POC = 1498*bbp.^0.3827;

subplot(223);
draw_map(lat1,lon1,POC);
text(118,33,'(c)','fontsize', 14, 'fontname', 'Times New Roman');
caxis(temp1);

sum3 = get_POC(POC);

%绘制冬季分布图
name = 'A20103552011079.L3m_SNWI_RRS_Rrs_555_4km.nc';
[Rrs_555,Lat,Lon] = read_x_nc(InPath,name,'Rrs_555');

ind1 = find(Lon>117,1);
ind2 = find(Lon>131,1);
lon1 = Lon(ind1:ind2);
ind3 = find(Lat<23,1);
ind4 = find(Lat<34,1);
lat1 = Lat(ind4:ind3);
Rrs=Rrs_555(ind1:ind2,ind4:ind3);

bb=1.705*Rrs-0.0003317;
bbp=bb-0.0015;
bbp(bbp<0)=0;
POC=849.4*bbp.^0.2668;

subplot(224);
draw_map(lat1,lon1,POC);
text(118,33,'(d)','fontsize', 14, 'fontname', 'Times New Roman');
caxis(temp1);

sum4=get_POC(POC);

%保存图片
saveas(gcf,'figures/POC_2010_seasonal.fig');

%输出四季浓度均值结果到mat
seasonal = [sum1 sum2 sum3 sum4];
save('results/POC_2010_seasonal.mat','seasonal');