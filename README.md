# Organic-Carbon-Estimating

## 程序说明

核心程序说明如下：

### 函数

+ `draw_map.m`：绘制含量分布图像的函数。
+ `get_POC.m`：计算指定区域内 POC 浓度均值。
+ `get_DOC.m`：计算指定区域内 DOC 浓度均值。
+ `choose_s.m`：选取 DOC 的年份和季节数据。
+ `read_Zeu.m`：读取真光层深度数据。
+ `read_x_nc.m`：读取 `.nc` 数据文件经度。
+ `read_xy_nc.m`：读取 `.nc` 数据文件经纬度。
+ `sum_sum.m`：根据矩阵数据计算总量。

### 拟合

+ `fitting_bb_Rrs.m`：拟合 2010 年东海 bb 与 Rrs 数据，并输出拟合图像。
+ `fitting_POC_bbp.m`：拟合 2010 年东海 POC 与 bbp 数据，并输出拟合图像。
+ `fitting_logPOC_N.m`：拟合 2010 年东海 log(POC) 与 N 数据，并输出拟合图像。

### POC（Particulate Organic Carbon，颗粒有机碳）

+ `POC_seasonal.m`：绘制四季的东海表层 POC 浓度分布图，并计算浓度均值。
+ `POC_3_years_contrast.m`：对比三年的东海 POC 浓度估算结果与NASA数据的变化趋势。
+ `POC_draw_model.m`：绘制 4 种 POC 垂直分布模型。
+ `POC_get_total.m`：计算 POC 全水柱与真光层总量。
+ `POC_total_2010.m`：绘制 2010 年 东海 POC 全水柱与真光层数据对比图。
+ `POC_total_from_2006_to_2015.m`：绘制 2006 年至 2015年 东海 POC 全水柱变化对比图。
+ `POC_monthly_contrast.m`：绘制 3 年 12 月的东海表层 POC 浓度分布图，并绘制浓度均值的变化趋势。
+ `POC_monthly_contrast_SCS.m`：绘制 2010 年南海表层 POC 浓度分布图，并绘制浓度均值的变化趋势。

### DOC（Dissolved Organic Carbon，溶解有机碳）

+ `DOC_seasonal.m`：绘制四季的东海表层 POC 浓度分布图，并计算浓度均值。
+ `DOC_5_years_contrast.m`：对比五年的东海 DOC 浓度估算结果。
+ `DOC_draw_model.m`：绘制 2 种 DOC 垂直分布模型。
+ `DOC_get_total.m`：计算 DOC 全水柱与真光层总量。
+ `DOC_total_2010.m`：绘制 2010 年东海 DOC 全水柱与真光层数据对比图。
+ `DOC_total_from_2006_to_2015.m`：绘制 2006 年至 2015年东海 DOC 全水柱变化对比图。

### Zeu（Euphotic Zone，真光层）

+ `Zeu_2010_seasonal.m`：绘制 2010 年东海真光层深度分布图。

## 数据存放

`data` 文件夹存放从 NASA [Ocean Color](https://oceancolor.gsfc.nasa.gov/) 下载的数据，文件夹的结构如下所示：

```
data
│ 
│  
├─monthly
│  ├─bb_555
│  │      A20080812008172.L3m_SNSP_IOP_bb_555_giop_4km.nc
│  │      A20081732008264.L3m_SNSU_IOP_bb_555_giop_4km.nc
│  │      ...
│  │      
│  ├─poc
│  │      A20100802010171.L3m_SNSP_POC_poc_4km.nc
│  │      A20101722010263.L3m_SNSU_POC_poc_4km.nc
│  │      ...
│  │      
│  ├─Rrs_555
│  │      A20100802010171.L3m_SNSP_RRS_Rrs_555_4km.nc
│  │      A20101722010263.L3m_SNSU_RRS_Rrs_555_4km.nc
│  │      ...
│  ...
│          
└─seasonal
   ├─...
   │ 
   ...
```

`results` 文件夹存放输出的数据结果，以 `.mat` 文件格式输出。

`figures` 文件夹存放输出的图像，以 `.fig` 文件格式输出。