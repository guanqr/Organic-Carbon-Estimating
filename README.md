# Organic-Carbon-Estimating

## 数据存放

`POC_data` 文件存放从 NASA [Ocean Color](https://oceancolor.gsfc.nasa.gov/) 下载的 POC 数据，DOC 同理，文件夹的结构如下所示：

```
POC_data
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

results 文件夹存放输出的数据结果，以 `.mat` 文件格式输出。

figures 文件夹存放输出的图像，以 `.fig` 文件格式输出。

## 程序说明

核心程序说明如下：

+ `draw_map.m`：绘制含量分布图像的函数，不可单独执行。
+ `get_POC.m`：计算指定区域内POC浓度均值。
+ `read_x_nc.m`：读取 `.nc` 数据文件经纬度，不可单独执行。
+ `fitting_bb_Rrs.m`：拟合 bb 与 Rrs 数据，并输出拟合图像。
+ `fitting_POC_bbp.m`：拟合 POC 与 bbp 数据，并输出拟合图像。
+ `fitting_logPOC_N.m`：拟合 log(POC) 与 N 数据，并输出拟合图像。
+ `POC_2010_seasonal.m`：绘制 2010 年四季的表层 POC 浓度分布与计算浓度均值，并输出图像。
+ `POC_3_years_contrast.m`：对比三年的POC浓度估算结果与NASA数据的变化趋势，并输出图像。
+ `POC_draw_model.m`：绘制 POC 垂直分布模型。
+ `POC_total_2010.m`：绘制 2010 年 POC 全水柱与真光层数据对比图。
+ `POC_total_from_2006_to_2015.m`：绘制 2006 年至 2015年 POC 全水柱变化对比图
+ `DOC_5_years_contrast.m`：对比五年的 DOC 浓度估算结果，并输出图像。
+ `DOC_draw_model.m`：绘制 DOC 垂直分布模型。
+ `DOC_total_2010.m`：绘制 2010 年 DOC 全水柱与真光层数据对比图。
+ `DOC_total_from_2006_to_2015.m`：绘制 2006 年至 2015年 DOC 全水柱变化对比图