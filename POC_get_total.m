%计算全水柱与真光层POC含量
clear; clc;
InPath = 'data\seasonal\Zeu\'; %真光层数据路径

%春季
load('results\POC_2010.mat','POC_SP','POC_SU','POC_AU','POC_WI');
POC=POC_SP;

sum_sp_poc = 25*POC+175*37;
name1 = 'A20100802010171.L3m_SNSP_ZLEE_Zeu_lee_4km.nc'; %真光层深度数据
zeu_sp = read_Zeu(name1);
lon = ncread(strcat(InPath,name1),'lon');
lat = ncread(strcat(InPath,name1),'lat');
ind1 = find(lon>117,1);
ind2 = find(lon>131,1);
ind3 = find(lat<23,1);
ind4 = find(lat<34,1);
zeu_sp = zeu_sp(ind1:ind2,ind4:ind3);
zeu_sp_poc = 25*POC+(zeu_sp-25)*37;

sum1 = sum_sum(sum_sp_poc); %计算全水柱总量
sum5 = sum_sum(zeu_sp_poc); %计算真光层总量

%夏季
load('results\POC_2010.mat','POC_SP','POC_SU','POC_AU','POC_WI');
POC=POC_SU;

sum_su_poc = 200*POC + (255579278853275648*POC.*exp(-(32*POC - 1600).*(POC - 50)))/1881475027264087;
name1 = 'A20101722010263.L3m_SNSU_ZLEE_Zeu_lee_4km.nc';
zeu_su = read_Zeu(name1);
lon = ncread(strcat(InPath,name1),'lon');
lat = ncread(strcat(InPath,name1),'lat');
ind1 = find(lon>117,1);
ind2 = find(lon>131,1);
ind3 = find(lat<23,1);
ind4 = find(lat<34,1);
zeu_su = zeu_su(ind1:ind2,ind4:ind3);
zeu_su_poc = zeu_su.*(POC + (31947409856659456*POC.*exp(-(32*POC - 1600).*(POC - 50)))/47036875681602175);

sum2 = sum_sum(sum_su_poc);
sum6 = sum_sum(zeu_su_poc);

%秋季
load('results\POC_2010.mat','POC_SP','POC_SU','POC_AU','POC_WI');
POC=POC_AU;

sum_au_poc = 200*POC;
name1 = 'A20102642010354.L3m_SNAU_ZLEE_Zeu_lee_4km.nc';
zeu_au = read_Zeu(name1);
lon = ncread(strcat(InPath,name1),'lon');
lat = ncread(strcat(InPath,name1),'lat');
ind1 = find(lon>117,1);
ind2 = find(lon>131,1);
ind3 = find(lat<23,1);
ind4 = find(lat<34,1);
zeu_au = zeu_au(ind1:ind2,ind4:ind3);
zeu_au_poc = zeu_au.*POC;

sum3 = sum_sum(sum_au_poc);
sum7 = sum_sum(zeu_au_poc);

%冬季
load('results\POC_2010.mat','POC_SP','POC_SU','POC_AU','POC_WI');
POC=POC_WI;

sum_wi_poc = 200*POC;
name1 = 'A20103552011079.L3m_SNWI_ZLEE_Zeu_lee_4km.nc';
zeu_wi = read_Zeu(name1);
lon = ncread(strcat(InPath,name1),'lon');
lat = ncread(strcat(InPath,name1),'lat');
ind1 = find(lon>117,1);
ind2 = find(lon>131,1);
ind3 = find(lat<23,1);
ind4 = find(lat<34,1);
zeu_wi = zeu_wi(ind1:ind2,ind4:ind3);
zeu_wi_poc = zeu_wi.*POC;

sum4 = sum_sum(sum_wi_poc);
sum8 = sum_sum(zeu_wi_poc);

%sum1~4为全水柱总量
%sum5~8为真光层总量