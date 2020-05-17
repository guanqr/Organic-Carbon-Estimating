% 绘制DOC全水柱2006至2015年十年的变化对比图
clear; clc;

% DOC全水柱十年四季数据，单位：10^{14}g
% spring=[1.3775;1.3842;1.3479;1.3521;1.4037;1.4172;1.3988;1.4284;1.3529;1.3977];
% summer=[1.4709;1.4817;1.4588;1.4425;1.5299;1.4382;1.4911;1.4993;1.4841;1.5110];
% autumn=[1.8917;1.8539;1.9850;1.8572;1.9728;1.8898;1.9362;1.9246;1.9693;1.9437];
% winter=[1.8155;1.7182;1.8069;1.8680;1.8519;1.8411;1.8303;1.8736;1.7844;1.9770];

% 2011年冬季数据异常，取相邻两年的均值1.8082替代
a0=(1.4199+1.5703+1.5392+1.7830)/4;
a1=(1.4237+1.5824+1.5084+1.6875)/4;
a2=(1.3859+1.5560+1.6151+1.7746)/4;
a3=(1.3892+1.5380+1.5111+1.8346)/4;
a4=(1.4280+1.6170+1.6052+1.8188)/4;
a5=(1.4603+1.5332+1.5377+1.8082)/4;
a6=(1.4408+1.5934+1.5754+1.7975)/4;
a7=(1.4728+1.6017+1.5660+1.8401)/4;
a8=(1.3922+1.5858+1.6024+1.7525)/4;
a9=(1.4383+1.6162+1.5815+1.9416)/4;

total=[a0,a1,a2,a3,a4,a5,a6,a7,a8,a9];

%绘制图像
x=0:1:9;
plot(x,total);
fontsize = 16;
set(gca, 'linewidth', 1, 'fontsize', fontsize, 'fontname', 'Times New Roman');
ylabel('DOC stocks (10^{14}g)', 'fontsize', fontsize, 'fontname', 'Times New Roman');   
xlabel('Year', 'fontsize', fontsize, 'fontname', 'Times New Roman');
set(gca,'XTickLabel',{'2006','2007','2008','2009','2010','2011','2012','2013','2014','2015'});
set(gca,'XTickLabelRotation',15);
set(gca,'XTick',0:1:9);
axis([0, 9, 1.55, 1.65]);
set(gcf, 'unit', 'centimeters', 'position', [1 5 20 8]);

%标注数据
for i=1:9
text(x(i), total(i)+0.005, num2str(total(i)), 'fontsize', 16, 'fontname', 'Times New Roman');
end
text(x(10)-1, total(10), num2str(total(10)), 'fontsize', 16, 'fontname', 'Times New Roman');

%保存图片
saveas(gcf, 'figures/DOC_total_from_2006_to_2015.fig');