%绘制表层DOC浓度分布图，并计算表层浓度均值，可调整变量year更换年份进行计算
clear; clc;

%同一年份不同季节对比
year = 2010; %设定计算年份
InPath = 'data\seasonal\'; %数据所在路径

%春季
season = choose_s(1,year);
[avg_sp, sum_sp, DOC_SP, lat1, lon1] = get_DOC(1, season, InPath);
subplot(2, 2, 1);
draw_map(lat1, lon1, DOC_SP, 'DOC');
text(118, 33, '(a)', 'fontsize', 14, 'fontname', 'Times New Roman');
temp1 = caxis;
avg_sp; %计算浓度均值

%夏季
season = choose_s(2,year);
[avg_su, sum_su, DOC_SU, lat1, lon1] = get_DOC(2, season, InPath);
subplot(2, 2, 2);
draw_map(lat1, lon1, DOC_SU, 'DOC');
text(118, 33, '(b)', 'fontsize', 14, 'fontname', 'Times New Roman');
caxis(temp1);
avg_su;

%秋季
season = choose_s(3,year);
[avg_au, sum_au, DOC_AU, lat1, lon1] = get_DOC(3, season, InPath);
subplot(2, 2, 3);
draw_map(lat1, lon1, DOC_AU, 'DOC');
text(118, 33, '(c)', 'fontsize', 14, 'fontname', 'Times New Roman');
caxis(temp1);
avg_au;

%冬季
season = choose_s(4, year);
[avg_wi, sum_wi, DOC_WI, lat1, lon1] = get_DOC(4, season, InPath);
subplot(2, 2, 4);
draw_map(lat1, lon1, DOC_WI, 'DOC');
text(118, 33, '(d)', 'fontsize', 14, 'fontname', 'Times New Roman');
caxis(temp1);
avg_wi;

%保存图片
saveas(gcf, 'figures/DOC_2010_seasonal.fig');

%save('results/DOC_2010.mat','DOC_SP','DOC_SU','DOC_AU','DOC_WI','-v7.3');