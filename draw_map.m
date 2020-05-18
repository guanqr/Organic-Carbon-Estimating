function draw_map(Lat, Lon, x, data)
%绘制东海水域POC含量分布图
%输入参数：经度、纬度、数据、数据类型
%数据类型可选择POC\DOC\Zeu\SCS
%分别表示东海POC季节数据、东海DOC季节数据、东海Zeu季节数据、南海POC月份数据
%根据选择数据类型的不同，经纬度与Colorbar的尺度不同
h = pcolor(Lon, Lat, x');
mcolor = load('mcolor.mat');
mcolor = mcolor.mcolor;
colormap(mcolor) 
set(h, 'LineStyle', 'none'); 

%colorbar
switch data
    case {'POC', 'SCS'}
        h = colorbar('Ticks', [0 100 200 300 400 500 600 700 800]);
        set(get(h, 'title'), 'string', 'mg/m^3');
    case 'DOC'
        h = colorbar('Ticks', [0 500 1000 1500 2000 2500 3000 3500 4000]);
        set(get(h, 'title'), 'string', 'mg/m^3');
    case 'Zeu'
        h = colorbar('Ticks', [0 20 40 60 80 100 120 140]);
        set(get(h, 'title'), 'string', 'm');
end

box on
%设置坐标范围
switch data
    case {'POC', 'DOC', 'Zeu'}
        axis([117,131,23,34]); %设置坐标范围，此范围为东海的大致位置
        set(gca, 'XTick', [118 122 126 130], 'YTick', [24 27 30 33]); %设定坐标宽度
    case 'SCS'
        axis([109,122,3,24]); %设置坐标范围，此范围为东海的大致位置
        set(gca, 'XTick', [109 115 121], 'YTick', [3 10 17 24]); %设定坐标宽度
end

fontsize = 16;
set(gca, 'linewidth', 1, 'fontsize', fontsize, 'fontname', 'Times New Roman');
ylabel('Latitude (°N)', 'fontsize', fontsize, 'fontname', 'Times New Roman');   
xlabel('Longitude (°E)', 'fontsize', fontsize, 'fontname', 'Times New Roman');
set(gcf, 'unit', 'centimeters', 'position', [1 5 20 15]); %前两项为距离屏幕左下角的距离，x方向和y方向，后两项为图片的大小
set(gcf, 'color', 'white');