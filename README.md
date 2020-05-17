# Organic-Carbon-Estimating

## 数据存放

`POC_data` 文件存放从 NASA [Ocean Color](https://oceancolor.gsfc.nasa.gov/) 下载的数据，文件夹的结构如下所示：

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
│  │       A20100802010171.L3m_SNSP_RRS_Rrs_555_4km.nc
│  │       A20101722010263.L3m_SNSU_RRS_Rrs_555_4km.nc
│  │       ...
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
+ `bb_Rrs_fitting.m`：拟合 bb 与 Rrs 数据，并输出拟合图像。
+ `POC_bbp_fitting.m`：拟合 POC 与 bbp 数据，并输出拟合图像。
+ `POC_2010_seasonal.m`：绘制 2010 年四季的表层 POC 浓度分布与计算浓度均值。
+ `ndci_logpoc_n_fitting.m`：拟合 log(POC) 与 N 数据，并输出拟合图像。
+ `POC_3_years_contrast.m`：对比三年的POC浓度估算结果与NASA数据的变化趋势。
+ `DOC_5_years_contrast.m`：对比五年的DOC浓度估算结果。