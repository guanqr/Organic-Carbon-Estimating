%绘制2010年真光层深度分布图
clear; clc;
InPath = 'data\seasonal\Zeu\';

%绘制冬季分布图（因为冬季的colorbar区域范围最大，以冬季的colorbar作为标准）
name = 'A20103552011079.L3m_SNWI_ZLEE_Zeu_lee_4km.nc';
%读取数据，设定坐标经纬度范围
[zeu_wi, lat, lon] = read_x_nc(InPath, name, 'Zeu_lee');
%东海海域范围
ind1 = find(lon>117,1);
ind2 = find(lon>131,1);
lon1 = lon(ind1:ind2);
ind3 = find(lat<23,1);
ind4 = find(lat<34,1);
lat1 = lat(ind4:ind3);
zeu_wi = zeu_wi(ind1:ind2,ind4:ind3);
%绘制分布图
subplot(224);
draw_map(lat1, lon1, zeu_wi, 'Zeu');
text(118,33,'(d)','fontsize', 14, 'fontname', 'Times New Roman');
temp1 = caxis;

%绘制春季分布图
name='A20100802010171.L3m_SNSP_ZLEE_Zeu_lee_4km.nc';

[zeu_sp, lat, lon] = read_x_nc(InPath, name, 'Zeu_lee');

ind1 = find(lon>117,1);
ind2 = find(lon>131,1);
lon1 = lon(ind1:ind2);
ind3 = find(lat<23,1);
ind4 = find(lat<34,1);
lat1 = lat(ind4:ind3);
zeu_sp = zeu_sp(ind1:ind2,ind4:ind3);

subplot(221);
draw_map(lat1, lon1, zeu_sp, 'Zeu');
text(118,33,'(a)','fontsize', 14, 'fontname', 'Times New Roman');
caxis(temp1);

%绘制夏季分布图
name='A20101722010263.L3m_SNSU_ZLEE_Zeu_lee_4km.nc';
[zeu_su, lat, lon] = read_x_nc(InPath, name, 'Zeu_lee');

ind1 = find(lon>117,1);
ind2 = find(lon>131,1);
lon1 = lon(ind1:ind2);
ind3 = find(lat<23,1);
ind4 = find(lat<34,1);
lat1 = lat(ind4:ind3);
zeu_su = zeu_su(ind1:ind2,ind4:ind3);

subplot(222);
draw_map(lat1, lon1, zeu_su, 'Zeu');
text(118,33,'(b)','fontsize', 14, 'fontname', 'Times New Roman');
caxis(temp1);

%绘制秋季分布图
name='A20102642010354.L3m_SNAU_ZLEE_Zeu_lee_4km.nc';

[zeu_au, lat, lon] = read_x_nc(InPath, name, 'Zeu_lee');

ind1 = find(lon>117,1);
ind2 = find(lon>131,1);
lon1 = lon(ind1:ind2);
ind3 = find(lat<23,1);
ind4 = find(lat<34,1);
lat1 = lat(ind4:ind3);
zeu_au = zeu_au(ind1:ind2,ind4:ind3);

subplot(223);
draw_map(lat1, lon1, zeu_au, 'Zeu');
text(118,33,'(c)','fontsize', 14, 'fontname', 'Times New Roman');
caxis(temp1);

%保存图片
saveas(gcf,'figures/Zeu_2010_seasonal.fig');