%绘制表层POC浓度分布图，并计算表层浓度均值
clear; clc;
InPath = 'data\seasonal\Rrs_555\';
year = '2015';

switch year
    case '2006'
        name1 = 'A20060802006171.L3m_SNSP_RRS_Rrs_555_4km.nc'; %春季
        name2 = 'A20061722006263.L3m_SNSU_RRS_Rrs_555_4km.nc'; %夏季
        name3 = 'A20062642006354.L3m_SNAU_RRS_Rrs_555_4km.nc'; %秋季
        name4 = 'A20063552007079.L3m_SNWI_RRS_Rrs_555_4km.nc'; %冬季
    case '2007'
        name1 = 'A20070802007171.L3m_SNSP_RRS_Rrs_555_4km.nc'; %春季
        name2 = 'A20071722007263.L3m_SNSU_RRS_Rrs_555_4km.nc'; %夏季
        name3 = 'A20072642007354.L3m_SNAU_RRS_Rrs_555_4km.nc'; %秋季
        name4 = 'A20073552008080.L3m_SNWI_RRS_Rrs_555_4km.nc'; %冬季
    case '2008'
        name1 = 'A20080812008172.L3m_SNSP_RRS_Rrs_555_4km.nc'; %春季
        name2 = 'A20081732008264.L3m_SNSU_RRS_Rrs_555_4km.nc'; %夏季
        name3 = 'A20082652008355.L3m_SNAU_RRS_Rrs_555_4km.nc'; %秋季
        name4 = 'A20083562009079.L3m_SNWI_RRS_Rrs_555_4km.nc'; %冬季
    case '2009'
        name1 = 'A20090802009171.L3m_SNSP_RRS_Rrs_555_4km.nc'; %春季
        name2 = 'A20091722009263.L3m_SNSU_RRS_Rrs_555_4km.nc'; %夏季
        name3 = 'A20092642009354.L3m_SNAU_RRS_Rrs_555_4km.nc'; %秋季
        name4 = 'A20093552010079.L3m_SNWI_RRS_Rrs_555_4km.nc'; %冬季
    case '2010'
        name1 = 'A20100802010171.L3m_SNSP_RRS_Rrs_555_4km.nc'; %春季
        name2 = 'A20101722010263.L3m_SNSU_RRS_Rrs_555_4km.nc'; %夏季
        name3 = 'A20102642010354.L3m_SNAU_RRS_Rrs_555_4km.nc'; %秋季
        name4 = 'A20103552011079.L3m_SNWI_RRS_Rrs_555_4km.nc'; %冬季
    case '2011'
        name1 = 'A20110802011171.L3m_SNSP_RRS_Rrs_555_4km.nc'; %春季
        name2 = 'A20111722011263.L3m_SNSU_RRS_Rrs_555_4km.nc'; %夏季
        name3 = 'A20112642011354.L3m_SNAU_RRS_Rrs_555_4km.nc'; %秋季
        name4 = 'A20113552012080.L3m_SNWI_RRS_Rrs_555_4km.nc'; %冬季
    case '2012'
        name1 = 'A20120812012172.L3m_SNSP_RRS_Rrs_555_4km.nc'; %春季
        name2 = 'A20121732012264.L3m_SNSU_RRS_Rrs_555_4km.nc'; %夏季
        name3 = 'A20122652012355.L3m_SNAU_RRS_Rrs_555_4km.nc'; %秋季
        name4 = 'A20123562013079.L3m_SNWI_RRS_Rrs_555_4km.nc'; %冬季
    case '2013'
        name1 = 'A20130802013171.L3m_SNSP_RRS_Rrs_555_4km.nc'; %春季
        name2 = 'A20101722010263.L3m_SNSU_RRS_Rrs_555_4km.nc'; %夏季
        name3 = 'A20102642010354.L3m_SNAU_RRS_Rrs_555_4km.nc'; %秋季
        name4 = 'A20103552011079.L3m_SNWI_RRS_Rrs_555_4km.nc'; %冬季
    case '2014'
        name1 = 'A20140802014171.L3m_SNSP_RRS_Rrs_555_4km.nc'; %春季
        name2 = 'A20141722014263.L3m_SNSU_RRS_Rrs_555_4km.nc'; %夏季
        name3 = 'A20142642014354.L3m_SNAU_RRS_Rrs_555_4km.nc'; %秋季
        name4 = 'A20143552015079.L3m_SNWI_RRS_Rrs_555_4km.nc'; %冬季
    case '2015'
        name1 = 'A20150802015171.L3m_SNSP_RRS_Rrs_555_4km.nc'; %春季
        name2 = 'A20151722015263.L3m_SNSU_RRS_Rrs_555_4km.nc'; %夏季
        name3 = 'A20152642015354.L3m_SNAU_RRS_Rrs_555_4km.nc'; %秋季
        name4 = 'A20153552016080.L3m_SNWI_RRS_Rrs_555_4km.nc'; %冬季
end

%绘制夏季分布图（因为夏季POC的colorbar区域范围最大，以夏季的colorbar作为标准）
%读取数据，设定坐标经纬度范围
[Rrs_555,Lat,Lon] = read_x_nc(InPath,name2,'Rrs_555'); 
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
draw_map(lat1, lon1, POC, 'POC');
text(118,33,'(b)','fontsize', 14, 'fontname', 'Times New Roman');
temp1 = caxis;

%计算夏季浓度均值
POC_SU = POC;
sum2 = get_POC(POC);

%绘制春季分布图
[Rrs_555,Lat,Lon] = read_x_nc(InPath,name1,'Rrs_555');

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
draw_map(lat1, lon1, POC, 'POC');
text(118,33,'(a)','fontsize', 14, 'fontname', 'Times New Roman');
caxis(temp1);

POC_SP = POC;
sum1 = get_POC(POC);

%绘制秋季分布图
[Rrs_555,Lat,Lon] = read_x_nc(InPath,name3,'Rrs_555');

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
draw_map(lat1, lon1, POC, 'POC');
text(118,33,'(c)','fontsize', 14, 'fontname', 'Times New Roman');
caxis(temp1);

POC_AU = POC;
sum3 = get_POC(POC);

%绘制冬季分布图
[Rrs_555,Lat,Lon] = read_x_nc(InPath,name4,'Rrs_555');

ind1 = find(Lon>117,1);
ind2 = find(Lon>131,1);
lon1 = Lon(ind1:ind2);
ind3 = find(Lat<23,1);
ind4 = find(Lat<34,1);
lat1 = Lat(ind4:ind3);
Rrs = Rrs_555(ind1:ind2,ind4:ind3);

bb = 1.705*Rrs-0.0003317;
bbp = bb-0.0015;
bbp(bbp<0) = 0;
POC = 849.4*bbp.^0.2668;

subplot(224);
draw_map(lat1, lon1, POC, 'POC');
text(118,33,'(d)','fontsize', 14, 'fontname', 'Times New Roman');
caxis(temp1);

POC_WI = POC;
sum4=get_POC(POC);

%保存图片
saveas(gcf,'figures/POC_2010_seasonal.fig');

outFileName = strcat('results/POC_', year, '.mat');
%输出矩阵结果，用于计算总量
save(outFileName,'POC_SP','POC_SU','POC_AU','POC_WI','-v7.3');

%输出四季浓度均值结果，用于绘图
% seasonal = [sum1 sum2 sum3 sum4];
% save('results/POC_2010_seasonal.mat','seasonal');