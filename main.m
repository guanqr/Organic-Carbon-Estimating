% clear all;clc;
% InPath = 'G:\2019-2020学年SRTP\POC数据\drawmap\POC_data\';
% %no.1
% name = 'A20100802010171.L3m_SNSP_RRS_Rrs_555_4km.nc';
% [Rrs_555,Lat,Lon] = read_x_nc(InPath,name,'Rrs_555');
% 
% ind1=find(Lon>117,1);
% ind2=find(Lon>131,1);
% lon1 = Lon(ind1:ind2);
% ind3 = find(Lat<23,1);
% ind4 = find(Lat<34,1);
% lat1 = Lat(ind4:ind3);
% 
% Rrs=Rrs_555(ind1:ind2,ind4:ind3);
% bb=1.2871*Rrs-0.0003793;
% %%bb=1.623*Rrs-0.000162;
% bbp=bb-0.0015;
% bbp(bbp<0)=0;
% POC=10970.5*bbp.^0.7117;
% %%POC=1359*bbp.^0.3252;
% subplot(221);
% draw_map(lat1,lon1,POC,'POC_{SP}(mg/m^3)');
% temp1=caxis;
% sum1=get_POC(POC);
% %no.2
% name = 'A20101722010263.L3m_SNSU_RRS_Rrs_555_4km.nc';
% [Rrs_555,Lat,Lon] = read_x_nc(InPath,name,'Rrs_555');
% 
% ind1=find(Lon>117,1);
% ind2=find(Lon>131,1);
% lon1 = Lon(ind1:ind2);
% ind3 = find(Lat<23,1);
% ind4 = find(Lat<34,1);
% lat1 = Lat(ind4:ind3);
% 
% Rrs=Rrs_555(ind1:ind2,ind4:ind3);
% %bb=2.109*Rrs-0.001186;
% bb=1.2871*Rrs-0.0003793;
% 
% bbp=bb-0.0015;
% bbp(bbp<0)=0;
% %POC=2607*bbp.^0.4975;
% POC=10970.5*bbp.^0.7117;
% subplot(222);
% 
% draw_map(lat1,lon1,POC,'POC_{SU}(mg/m^3)');
% caxis(temp1);
% sum2=get_POC(POC);
% %no.3
% name = 'A20102642010354.L3m_SNAU_RRS_Rrs_555_4km.nc';
% [Rrs_555,Lat,Lon] = read_x_nc(InPath,name,'Rrs_555');
% 
% ind1=find(Lon>117,1);
% ind2=find(Lon>131,1);
% lon1 = Lon(ind1:ind2);
% ind3 = find(Lat<23,1);
% ind4 = find(Lat<34,1);
% lat1 = Lat(ind4:ind3);
% 
% Rrs=Rrs_555(ind1:ind2,ind4:ind3);
% %bb=1.787*Rrs-0.0006908;
% bb=1.2871*Rrs-0.0003793;
% bbp=bb-0.0015;
% bbp(bbp<0)=0;
% %POC=1498*bbp.^0.3827;
% POC=10970.5*bbp.^0.7117;
% subplot(223);
% draw_map(lat1,lon1,POC,'POC_{AU}(mg/m^3)');
% caxis(temp1);
% sum3=get_POC(POC);
% %no.4
% name = 'A20103552011079.L3m_SNWI_RRS_Rrs_555_4km.nc';
% [Rrs_555,Lat,Lon] = read_x_nc(InPath,name,'Rrs_555');
% 
% ind1=find(Lon>117,1);
% ind2=find(Lon>131,1);
% lon1 = Lon(ind1:ind2);
% ind3 = find(Lat<23,1);
% ind4 = find(Lat<34,1);
% lat1 = Lat(ind4:ind3);
% 
% Rrs=Rrs_555(ind1:ind2,ind4:ind3);
% %bb=1.705*Rrs-0.0003317;
% bb=1.2871*Rrs-0.0003793;
% bbp=bb-0.0015;
% bbp(bbp<0)=0;
% %POC=849.4*bbp.^0.2668;
% POC=10970.5*bbp.^0.7117;
% subplot(224);
% draw_map(lat1,lon1,POC,'POC_{WI}(mg/m^3)');
% caxis(temp1);
% sum4=get_POC(POC);

% %第二种方法
% clear all;clc;
% InPath = 'G:\2019-2020学年SRTP\POC数据\drawmap\POC_data\';
% %no.1
% name = 'A20100802010171.L3m_SNSP_IOP_bb_555_giop_4km.nc';
% %name = 'A20090802009171.L3m_SNSP_IOP_bb_555_giop_4km.nc';
% %name = 'A20120812012172.L3m_SNSP_IOP_bb_555_giop_4km.nc';
% %name = 'A20130802013171.L3m_SNSP_IOP_bb_555_giop_4km.nc';
% 
% [bb_555,Lat,Lon] = read_x_nc(InPath,name,'bb_555_giop');
% 
% ind1=find(Lon>117,1);
% ind2=find(Lon>131,1);
% lon1 = Lon(ind1:ind2);
% ind3 = find(Lat<23,1);
% ind4 = find(Lat<34,1);
% lat1 = Lat(ind4:ind3);
% 
% bb=bb_555(ind1:ind2,ind4:ind3);
% bbp=bb-0.0015;
% bbp(bbp<0)=0;
% POC=10970.5*bbp.^0.7117;
% subplot(221);
% draw_map(lat1,lon1,POC,'POC_{SP}(mg/m^3)');
% sum1=get_POC(POC);
% %no.2
% name = 'A20101722010263.L3m_SNSU_IOP_bb_555_giop_4km.nc';
% %name = 'A20091722009263.L3m_SNSU_IOP_bb_555_giop_4km.nc';
% %name = 'A20121732012264.L3m_SNSU_IOP_bb_555_giop_4km.nc';
% %name = 'A20131722013263.L3m_SNSU_IOP_bb_555_giop_4km.nc';
% 
% [bb_555,Lat,Lon] = read_x_nc(InPath,name,'bb_555_giop');
% 
% ind1=find(Lon>117,1);
% ind2=find(Lon>131,1);
% lon1 = Lon(ind1:ind2);
% ind3 = find(Lat<23,1);
% ind4 = find(Lat<34,1);
% lat1 = Lat(ind4:ind3);
% 
% bb=bb_555(ind1:ind2,ind4:ind3);
% bbp=bb-0.0015;
% bbp(bbp<0)=0;
% POC=10970.5*bbp.^0.7117;
% subplot(222);
% draw_map(lat1,lon1,POC,'POC_{SU}(mg/m^3)');
% sum2=get_POC(POC);
% %no.3
% name = 'A20102642010354.L3m_SNAU_IOP_bb_555_giop_4km.nc';
% %name = 'A20092642009354.L3m_SNAU_IOP_bb_555_giop_4km.nc';
% %name = 'A20122652012355.L3m_SNAU_IOP_bb_555_giop_4km.nc';
% %name = 'A20132642013354.L3m_SNAU_IOP_bb_555_giop_4km.nc';
% 
% [bb_555,Lat,Lon] = read_x_nc(InPath,name,'bb_555_giop');
% 
% ind1=find(Lon>117,1);
% ind2=find(Lon>131,1);
% lon1 = Lon(ind1:ind2);
% ind3 = find(Lat<23,1);
% ind4 = find(Lat<34,1);
% lat1 = Lat(ind4:ind3);
% 
% bb=bb_555(ind1:ind2,ind4:ind3);
% bbp=bb-0.0015;
% bbp(bbp<0)=0;
% POC=10970.5*bbp.^0.7117;
% subplot(223);
% draw_map(lat1,lon1,POC,'POC_{AU}(mg/m^3)');
% sum3=get_POC(POC);
% %no.4
% name = 'A20103552011079.L3m_SNWI_IOP_bb_555_giop_4km.nc';
% %name = 'A20093552010079.L3m_SNWI_IOP_bb_555_giop_4km.nc';
% %name = 'A20123562013079.L3m_SNWI_IOP_bb_555_giop_4km.nc';
% %name = 'A20133552014079.L3m_SNWI_IOP_bb_555_giop_4km.nc';
% 
% [bb_555,Lat,Lon] = read_x_nc(InPath,name,'bb_555_giop');
% 
% ind1=find(Lon>117,1);
% ind2=find(Lon>131,1);
% lon1 = Lon(ind1:ind2);
% ind3 = find(Lat<23,1);
% ind4 = find(Lat<34,1);
% lat1 = Lat(ind4:ind3);
% 
% bb=bb_555(ind1:ind2,ind4:ind3);
% bbp=bb-0.0015;
% bbp(bbp<0)=0;
% POC=10970.5*bbp.^0.7117;
% subplot(224);
% draw_map(lat1,lon1,POC,'POC_{WI}(mg/m^3)');
% sum4=get_POC(POC);

%拟合bb和rrs
% clear;
% InPath = 'G:\2019-2020学年SRTP\POC数据\drawmap\POC_data\';
% name = 'A20121732012264.L3m_SNSU_IOP_bb_555_giop_4km.nc';
% [bb_555,Lat,Lon] = read_x_nc(InPath,name,'bb_555_giop');
% 
% ind1=find(Lon>117,1);
% ind2=find(Lon>131,1);
% lon1 = Lon(ind1:ind2);
% ind3 = find(Lat<23,1);
% ind4 = find(Lat<34,1);
% lat1 = Lat(ind4:ind3);
% bb=bb_555(ind1:ind2,ind4:ind3);
% bbp=bb-0.0015;
% bbp(bbp<=0)=0.0001;
% 
% 
% InPath = 'G:\2019-2020学年SRTP\POC数据\drawmap\POC_data\';
% name = 'A20132642013354.L3m_SNAU_RRS_Rrs_555_4km.nc';
% [Rrs_555,Lat,Lon] = read_x_nc(InPath,name,'Rrs_555');
% 
% ind1=find(Lon>117,1);
% ind2=find(Lon>131,1);
% lon1 = Lon(ind1:ind2);
% ind3 = find(Lat<23,1);
% ind4 = find(Lat<34,1);
% lat1 = Lat(ind4:ind3);
% Rrs=Rrs_555(ind1:ind2,ind4:ind3);
% 
% name = 'A20121732012264.L3m_SNSU_POC_poc_4km.nc';
% [poc,Lat,Lon] = read_x_nc(InPath,name,'poc');
% 
% ind1=find(Lon>117,1);
% ind2=find(Lon>131,1);
% lon1 = Lon(ind1:ind2);
% ind3 = find(Lat<23,1);
% ind4 = find(Lat<34,1);
% lat1 = Lat(ind4:ind3);
% POC=poc(ind1:ind2,ind4:ind3);
% sum=get_POC(POC);
% Rrs0=Rrs(125:335,125:260);
% bb0=bb(125:335,125:260);
% Rrs0(isnan(Rrs0))=0;
% bb0(isnan(bb0))=0;
% p = polyfit(Rrs0,bb0,1);

% %nasa data 20191128
% clear all;clc;
% InPath = 'G:\2019-2020学年SRTP\POC数据\drawmap\POC_data\';
% %no.1
% name = 'A20130012013031.L3m_MO_POC_poc_4km.nc';
% [poc,Lat,Lon] = read_x_nc(InPath,name,'poc');
% % ind1=find(Lon>117,1);
% % ind2=find(Lon>131,1);
% % lon1 = Lon(ind1:ind2);
% % ind3 = find(Lat<23,1);
% % ind4 = find(Lat<34,1);
% % lat1 = Lat(ind4:ind3);
% ind1=find(Lon>109,1);
% ind2=find(Lon>122,1);
% lon1 = Lon(ind1:ind2);
% ind3 = find(Lat<3,1);
% ind4 = find(Lat<24,1);
% lat1 = Lat(ind4:ind3);
% POC=poc(ind1:ind2,ind4:ind3);
% %POC(POC>500)=500;
% subplot(431);
% draw_map(lat1,lon1,POC,'POC_{1}(mg/m^3)');
% temp1=caxis;
% sum01=get_POC(POC);
% %no.2
% name = 'A20130322013059.L3m_MO_POC_poc_4km.nc';
% [poc,Lat,Lon] = read_x_nc(InPath,name,'poc');
% % ind1=find(Lon>117,1);
% % ind2=find(Lon>131,1);
% % lon1 = Lon(ind1:ind2);
% % ind3 = find(Lat<23,1);
% % ind4 = find(Lat<34,1);
% % lat1 = Lat(ind4:ind3);
% ind1=find(Lon>109,1);
% ind2=find(Lon>122,1);
% lon1 = Lon(ind1:ind2);
% ind3 = find(Lat<3,1);
% ind4 = find(Lat<24,1);
% lat1 = Lat(ind4:ind3);
% POC=poc(ind1:ind2,ind4:ind3);
% %POC(POC>500)=500;
% subplot(432);
% draw_map(lat1,lon1,POC,'POC_{2}(mg/m^3)');
% caxis(temp1);
% sum02=get_POC(POC);
% %no.3
% name = 'A20130602013090.L3m_MO_POC_poc_4km.nc';
% [poc,Lat,Lon] = read_x_nc(InPath,name,'poc');
% % ind1=find(Lon>117,1);
% % ind2=find(Lon>131,1);
% % lon1 = Lon(ind1:ind2);
% % ind3 = find(Lat<23,1);
% % ind4 = find(Lat<34,1);
% % lat1 = Lat(ind4:ind3);
% ind1=find(Lon>109,1);
% ind2=find(Lon>122,1);
% lon1 = Lon(ind1:ind2);
% ind3 = find(Lat<3,1);
% ind4 = find(Lat<24,1);
% lat1 = Lat(ind4:ind3);
% POC=poc(ind1:ind2,ind4:ind3);
% %POC(POC>500)=500;
% subplot(433);
% draw_map(lat1,lon1,POC,'POC_{3}(mg/m^3)');
% caxis(temp1);
% sum03=get_POC(POC);
% %no.4
% name = 'A20130912013120.L3m_MO_POC_poc_4km.nc';
% [poc,Lat,Lon] = read_x_nc(InPath,name,'poc');
% % ind1=find(Lon>117,1);
% % ind2=find(Lon>131,1);
% % lon1 = Lon(ind1:ind2);
% % ind3 = find(Lat<23,1);
% % ind4 = find(Lat<34,1);
% % lat1 = Lat(ind4:ind3);
% ind1=find(Lon>109,1);
% ind2=find(Lon>122,1);
% lon1 = Lon(ind1:ind2);
% ind3 = find(Lat<3,1);
% ind4 = find(Lat<24,1);
% lat1 = Lat(ind4:ind3);
% POC=poc(ind1:ind2,ind4:ind3);
% %POC(POC>500)=500;
% subplot(434);
% draw_map(lat1,lon1,POC,'POC_{4}(mg/m^3)');
% caxis(temp1);
% sum04=get_POC(POC);
% %no.5
% name = 'A20131212013151.L3m_MO_POC_poc_4km.nc';
% [poc,Lat,Lon] = read_x_nc(InPath,name,'poc');
% % ind1=find(Lon>117,1);
% % ind2=find(Lon>131,1);
% % lon1 = Lon(ind1:ind2);
% % ind3 = find(Lat<23,1);
% % ind4 = find(Lat<34,1);
% % lat1 = Lat(ind4:ind3);
% ind1=find(Lon>109,1);
% ind2=find(Lon>122,1);
% lon1 = Lon(ind1:ind2);
% ind3 = find(Lat<3,1);
% ind4 = find(Lat<24,1);
% lat1 = Lat(ind4:ind3);
% POC=poc(ind1:ind2,ind4:ind3);
% %POC(POC>500)=500;
% subplot(435);
% draw_map(lat1,lon1,POC,'POC_{5}(mg/m^3)');
% temp1=caxis;
% sum05=get_POC(POC);
% %no.6
% name = 'A20131522013181.L3m_MO_POC_poc_4km.nc';
% [poc,Lat,Lon] = read_x_nc(InPath,name,'poc');
% % ind1=find(Lon>117,1);
% % ind2=find(Lon>131,1);
% % lon1 = Lon(ind1:ind2);
% % ind3 = find(Lat<23,1);
% % ind4 = find(Lat<34,1);
% % lat1 = Lat(ind4:ind3);
% ind1=find(Lon>109,1);
% ind2=find(Lon>122,1);
% lon1 = Lon(ind1:ind2);
% ind3 = find(Lat<3,1);
% ind4 = find(Lat<24,1);
% lat1 = Lat(ind4:ind3);
% POC=poc(ind1:ind2,ind4:ind3);
% %POC(POC>500)=500;
% subplot(436);
% draw_map(lat1,lon1,POC,'POC_{6}(mg/m^3)');
% temp1=caxis;
% sum06=get_POC(POC);
% %no.7
% name = 'A20131822013212.L3m_MO_POC_poc_4km.nc';
% [poc,Lat,Lon] = read_x_nc(InPath,name,'poc');
% % ind1=find(Lon>117,1);
% % ind2=find(Lon>131,1);
% % lon1 = Lon(ind1:ind2);
% % ind3 = find(Lat<23,1);
% % ind4 = find(Lat<34,1);
% % lat1 = Lat(ind4:ind3);
% ind1=find(Lon>109,1);
% ind2=find(Lon>122,1);
% lon1 = Lon(ind1:ind2);
% ind3 = find(Lat<3,1);
% ind4 = find(Lat<24,1);
% lat1 = Lat(ind4:ind3);
% POC=poc(ind1:ind2,ind4:ind3);
% %POC(POC>500)=500;
% subplot(437);
% draw_map(lat1,lon1,POC,'POC_{7}(mg/m^3)');
% temp1=caxis;
% sum07=get_POC(POC);
% %no.8
% name = 'A20132132013243.L3m_MO_POC_poc_4km.nc';
% [poc,Lat,Lon] = read_x_nc(InPath,name,'poc');
% % ind1=find(Lon>117,1);
% % ind2=find(Lon>131,1);
% % lon1 = Lon(ind1:ind2);
% % ind3 = find(Lat<23,1);
% % ind4 = find(Lat<34,1);
% % lat1 = Lat(ind4:ind3);
% ind1=find(Lon>109,1);
% ind2=find(Lon>122,1);
% lon1 = Lon(ind1:ind2);
% ind3 = find(Lat<3,1);
% ind4 = find(Lat<24,1);
% lat1 = Lat(ind4:ind3);
% POC=poc(ind1:ind2,ind4:ind3);
% %POC(POC>500)=500;
% subplot(438);
% draw_map(lat1,lon1,POC,'POC_{8}(mg/m^3)');
% temp1=caxis;
% sum08=get_POC(POC);
% %no.9
% name = 'A20132442013273.L3m_MO_POC_poc_4km.nc';
% [poc,Lat,Lon] = read_x_nc(InPath,name,'poc');
% % ind1=find(Lon>117,1);
% % ind2=find(Lon>131,1);
% % lon1 = Lon(ind1:ind2);
% % ind3 = find(Lat<23,1);
% % ind4 = find(Lat<34,1);
% % lat1 = Lat(ind4:ind3);
% ind1=find(Lon>109,1);
% ind2=find(Lon>122,1);
% lon1 = Lon(ind1:ind2);
% ind3 = find(Lat<3,1);
% ind4 = find(Lat<24,1);
% lat1 = Lat(ind4:ind3);
% POC=poc(ind1:ind2,ind4:ind3);
% %POC(POC>500)=500;
% subplot(439);
% draw_map(lat1,lon1,POC,'POC_{9}(mg/m^3)');
% temp1=caxis;
% sum09=get_POC(POC);
% %no.10
% name = 'A20132742013304.L3m_MO_POC_poc_4km.nc';
% [poc,Lat,Lon] = read_x_nc(InPath,name,'poc');
% % ind1=find(Lon>117,1);
% % ind2=find(Lon>131,1);
% % lon1 = Lon(ind1:ind2);
% % ind3 = find(Lat<23,1);
% % ind4 = find(Lat<34,1);
% % lat1 = Lat(ind4:ind3);
% ind1=find(Lon>109,1);
% ind2=find(Lon>122,1);
% lon1 = Lon(ind1:ind2);
% ind3 = find(Lat<3,1);
% ind4 = find(Lat<24,1);
% lat1 = Lat(ind4:ind3);
% POC=poc(ind1:ind2,ind4:ind3);
% %POC(POC>500)=500;
% subplot(4,3,10);
% draw_map(lat1,lon1,POC,'POC_{10}(mg/m^3)');
% temp1=caxis;
% sum10=get_POC(POC);
% %no.11
% name = 'A20133052013334.L3m_MO_POC_poc_4km.nc';
% [poc,Lat,Lon] = read_x_nc(InPath,name,'poc');
% % ind1=find(Lon>117,1);
% % ind2=find(Lon>131,1);
% % lon1 = Lon(ind1:ind2);
% % ind3 = find(Lat<23,1);
% % ind4 = find(Lat<34,1);
% % lat1 = Lat(ind4:ind3);
% ind1=find(Lon>109,1);
% ind2=find(Lon>122,1);
% lon1 = Lon(ind1:ind2);
% ind3 = find(Lat<3,1);
% ind4 = find(Lat<24,1);
% lat1 = Lat(ind4:ind3);
% POC=poc(ind1:ind2,ind4:ind3);
% %POC(POC>500)=500;
% subplot(4,3,11);
% draw_map(lat1,lon1,POC,'POC_{11}(mg/m^3)');
% temp1=caxis;
% sum11=get_POC(POC);
% %no.12
% name = 'A20133352013365.L3m_MO_POC_poc_4km.nc';
% [poc,Lat,Lon] = read_x_nc(InPath,name,'poc');
% % ind1=find(Lon>117,1);
% % ind2=find(Lon>131,1);
% % lon1 = Lon(ind1:ind2);
% % ind3 = find(Lat<23,1);
% % ind4 = find(Lat<34,1);
% % lat1 = Lat(ind4:ind3);
% ind1=find(Lon>109,1);
% ind2=find(Lon>122,1);
% lon1 = Lon(ind1:ind2);
% ind3 = find(Lat<3,1);
% ind4 = find(Lat<24,1);
% lat1 = Lat(ind4:ind3);
% POC=poc(ind1:ind2,ind4:ind3);
% %POC(POC>500)=500;
% subplot(4,3,12);
% draw_map(lat1,lon1,POC,'POC_{12}(mg/m^3)');
% temp1=caxis;
% sum12=get_POC(POC);

clear all;clc;
InPath = 'G:\2019-2020学年SRTP\POC数据\drawmap\POC_data\';
%no.1
name = 'A20130802013171.L3m_SNSP_RRS_Rrs_555_4km.nc';
[Rrs_555,Lat,Lon] = read_x_nc(InPath,name,'Rrs_555');

ind1=find(Lon>117,1);
ind2=find(Lon>131,1);
lon1 = Lon(ind1:ind2);
ind3 = find(Lat<23,1);
ind4 = find(Lat<34,1);
lat1 = Lat(ind4:ind3);

Rrs=Rrs_555(ind1:ind2,ind4:ind3);
%bb=1.859*Rrs-0.0006435;
bb=1.623*Rrs-0.000162;
bbp=bb-0.0015;
bbp(bbp<0)=0;
%POC=921.1*bbp.^0.2587;
POC=1359*bbp.^0.3252;
subplot(221);
draw_map(lat1,lon1,POC,'POC_{SP}(mg/m^3)');
%temp1=caxis;
sum1=get_POC(POC);
%no.2
name = 'A20131722013263.L3m_SNSU_RRS_Rrs_555_4km.nc';
[Rrs_555,Lat,Lon] = read_x_nc(InPath,name,'Rrs_555');

ind1=find(Lon>117,1);
ind2=find(Lon>131,1);
lon1 = Lon(ind1:ind2);
ind3 = find(Lat<23,1);
ind4 = find(Lat<34,1);
lat1 = Lat(ind4:ind3);

Rrs=Rrs_555(ind1:ind2,ind4:ind3);
bb=2.109*Rrs-0.001186;
%bb=2.06*Rrs-0.001183;

bbp=bb-0.0015;
bbp(bbp<0)=0;
POC=2607*bbp.^0.4975;
%POC=2287*bbp.^0.4895;
subplot(222);

draw_map(lat1,lon1,POC,'POC_{SU}(mg/m^3)');
%caxis(temp1);
sum2=get_POC(POC);
%no.3
name = 'A20132642013354.L3m_SNAU_RRS_Rrs_555_4km.nc';
[Rrs_555,Lat,Lon] = read_x_nc(InPath,name,'Rrs_555');

ind1=find(Lon>117,1);
ind2=find(Lon>131,1);
lon1 = Lon(ind1:ind2);
ind3 = find(Lat<23,1);
ind4 = find(Lat<34,1);
lat1 = Lat(ind4:ind3);

Rrs=Rrs_555(ind1:ind2,ind4:ind3);
%bb=1.787*Rrs-0.0006908;
bb=1.764*Rrs-0.0005434;
bbp=bb-0.0015;
bbp(bbp<0)=0;
%POC=1498*bbp.^0.3827;
POC=1238*bbp.^0.3518;
subplot(223);
draw_map(lat1,lon1,POC,'POC_{AU}(mg/m^3)');
%caxis(temp1);
sum3=get_POC(POC);
%no.4
name = 'A20133552014079.L3m_SNWI_RRS_Rrs_555_4km.nc';
[Rrs_555,Lat,Lon] = read_x_nc(InPath,name,'Rrs_555');

ind1=find(Lon>117,1);
ind2=find(Lon>131,1);
lon1 = Lon(ind1:ind2);
ind3 = find(Lat<23,1);
ind4 = find(Lat<34,1);
lat1 = Lat(ind4:ind3);

Rrs=Rrs_555(ind1:ind2,ind4:ind3);
%bb=1.705*Rrs-0.0003317;
bb=1.798*Rrs-0.0006324;
bbp=bb-0.0015;
bbp(bbp<0)=0;
%POC=849.4*bbp.^0.2668;
POC=846.2*bbp.^0.2776;
subplot(224);
draw_map(lat1,lon1,POC,'POC_{WI}(mg/m^3)');
%caxis(temp1);
sum4=get_POC(POC);