%绘制2010年全水柱与真光层POC总储量
clear; clc;
x = 1:1:4;
%全水柱数据
a = [14.280, 16.170, 16.052, 18.188];
%真光层数据
b = [5.377, 7.309, 4.260, 3.562];

%绘制图像
p = plot(x, a, '-or', x, b, '-*b');
axis([1, 4, 0, 35]);
set(gca, 'YTick', 0:5:35);
set(gca, 'XTick', [1:1:4]);
set(p, 'linewidth', 1.2);
fontsize = 16;
set(gca, 'linewidth', 1, 'fontsize', fontsize, 'fontname', 'Times New Roman');
ylabel('DOC stocks (10^{13}g)', 'fontsize', fontsize, 'fontname', 'Times New Roman');   
xlabel('Season', 'fontsize', fontsize, 'fontname', 'Times New Roman');
h = legend(p, 'All Water Columns', 'Euphotic Layer', 'Location', 'NorthWest');
set(h,'Box', 'off');
name = {'Spring', 'Summer', 'Autumn', 'Winter'}; set(gca, 'XTickLabel', name);

%标记数值
text(x(1)+0.1, a(1)+2, num2str(a(1)), 'fontsize', 16, 'fontname', 'Times New Roman');
text(x(2)-0.2, a(2)+2, num2str(a(2)), 'fontsize', 16, 'fontname', 'Times New Roman');
text(x(3)-0.2, a(3)+2, num2str(a(3)), 'fontsize', 16, 'fontname', 'Times New Roman');
text(x(4)-0.45, a(4)+2, num2str(a(4)), 'fontsize', 16, 'fontname', 'Times New Roman');
text(x(1)+0.05, b(1)+2, num2str(b(1)), 'fontsize', 16, 'fontname', 'Times New Roman');
text(x(2)-0.2, b(2)+2, num2str(b(2)), 'fontsize', 16, 'fontname', 'Times New Roman');
text(x(3)-0.2, b(3)+2, num2str(b(3)), 'fontsize', 16, 'fontname', 'Times New Roman');
text(x(4)-0.45, b(4)+2, num2str(b(4)), 'fontsize', 16, 'fontname', 'Times New Roman');

%保存图片
saveas(gcf, 'figures/DOC_total_2010.fig');