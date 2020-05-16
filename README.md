# 有机碳含量估算

## 数据存放

`POC_data` 文件存放从 NASA [Ocean Color](https://oceancolor.gsfc.nasa.gov/) 下载的数据（数据下载的方式可参考我的文章：[《OceanColor 遥感数据产品的获取》](https://guanqr.com/tech/optics/how-to-get-oceancolor-data/)），文件夹的结构如下所示：

```
POC_data
│ 
│  
├─monthly
│  ├─bb_555
│  │      A20080812008172.L3m_SNSP_IOP_bb_555_giop_4km.nc
│  │      A20081732008264.L3m_SNSU_IOP_bb_555_giop_4km.nc
│  │      A20082652008355.L3m_SNAU_IOP_bb_555_giop_4km.nc
│  │      ...
│  │      
│  ├─poc
│  │      A20100802010171.L3m_SNSP_POC_poc_4km.nc
│  │      A20101722010263.L3m_SNSU_POC_poc_4km.nc
│  │      ...
│  │      
│  └─Rrs_555
│          A20100802010171.L3m_SNSP_RRS_Rrs_555_4km.nc
│          A20101722010263.L3m_SNSU_RRS_Rrs_555_4km.nc
│          A20102642010354.L3m_SNAU_RRS_Rrs_555_4km.nc
│          ...
│          
└─seasonal
    ...
```

results 文件夹存放输出的数据结果，以 `.mat` 文件格式输出。

figures 文件夹存放输出的图像，以 `.fig` 文件格式输出。

## 程序说明

核心程序说明如下：

+ `draw_map.m`：绘制含量分布图像的函数，不可单独执行。
+ `read_x_nc.m`：读取 `.nc` 数据文件经纬度，不可单独执行。
+ `bb_Rrs_fitting.m`：拟合 bb 与 Rrs 数据，并输出拟合图像。
+ `poc_bbp_fitting.m`：拟合 POC 与 bbp 数据，并输出拟合图像。
+ `POC_2010_seasonal.m`：绘制 2010 年四季的表层 POC 浓度分布与计算浓度均值。