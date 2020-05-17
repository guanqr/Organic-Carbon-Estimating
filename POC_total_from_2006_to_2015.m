% 绘制POC全水柱2006至2015年十年的变化对比图
clear; clc;

% POC全水柱十年四季数据，单位：10^{13}g
% spring=[0.96286;1.0404;1.0191;1.0344;1.0193;1.0808;1.0410;1.0650;0.99674;1.0596];
% summer=[2.2947;2.2973;2.3462;2.2586;2.4205;2.2473;2.3898;2.4434;2.2803;2.3802];
% autumn=[2.3807;2.3382;2.7230;2.2936;2.7474;2.5360;2.5940;2.4658;2.5279;2.5408];
% winter=[3.0775;2.8669;2.9771;3.0984;3.0665;2.99855;2.9306;3.0813;2.9116;3.1545];

% 2011年冬季数据异常，取相邻两年的均值2.99855替代
a0=(0.96286+2.2947+2.3807+3.0775)/4;
a1=(1.0404+2.2973+2.3382+2.8669)/4;
a2=(1.0191+2.3462+2.7230+2.9771)/4;
a3=(1.0344+2.2586+2.2936+3.0984)/4;
a4=(1.0193+2.4205+2.7474+3.0665)/4;
a5=(1.080+2.2473+2.5360+2.99855)/4;
a6=(1.0410+2.3898+2.5940+2.9306)/4;
a7=(1.0650+2.4434+2.4658+3.0813)/4;
a8=(0.99674+2.2803+2.5279+2.9116)/4;
a9=(1.0596+2.3802+2.5408+3.1545)/4;
total=[a0,a1,a2,a3,a4,a5,a6,a7,a8,a9];

%绘制图像
x=0:1:9;
plot(x,total);
fontsize = 16;
set(gca, 'linewidth', 1, 'fontsize', fontsize, 'fontname', 'Times New Roman');
ylabel('POC stocks (10^{13}g)', 'fontsize', fontsize, 'fontname', 'Times New Roman');   
xlabel('Year', 'fontsize', fontsize, 'fontname', 'Times New Roman');
set(gca,'XTickLabel',{'2006','2007','2008','2009','2010','2011','2012','2013','2014','2015'});
set(gca,'XTickLabelRotation',15);
set(gca,'XTick',0:1:9);
axis([0, 9, 2.1, 2.35]);
set(gcf, 'unit', 'centimeters', 'position', [1 5 20 8]);

%标注数据
for i=1:9
text(x(i), total(i), num2str(total(i)), 'fontsize', 16, 'fontname', 'Times New Roman');
end
text(x(10)-1, total(10), num2str(total(10)), 'fontsize', 16, 'fontname', 'Times New Roman');

%保存图片
saveas(gcf, 'figures/POC_total_from_2006_to_2015.fig');