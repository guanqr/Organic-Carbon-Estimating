%%计算全水柱与真光层DOC含量
%由某年的3月的温盐数据计算得到该年的关于水体密度的系数β
%由于给出的温盐矩阵是1°*1°而表层数据的矩阵是4km*4km，所以需要将由温盐计算得到的存有数据β的矩阵进行放大和裁剪
clear; clc;
InPath = 'data\seasonal\Argo\';

%春季
%温盐数据
name1='GDCSM_Argo_201003.nc';
[S,T,Lat,Lon]=read_xy_nc(InPath,name1,'salt','temp');
S=S(:,:,1,1);
S=reshape(S,172,121);
T=T(:,:,1,1);
T=reshape(T,172,121);

ind1=find(Lon>119,1);
ind2=find(Lon>132,1);
ind3 = find(Lat>23,1);
ind4 = find(Lat>34,1);

b=(T(ind1:ind2,ind3:ind4)-16.63)/7.41+(5*S(ind1:ind2,ind3:ind4)-167.05)/3.57;%计算β值，式中5为修正系数a
b(b<-2.7)=1;
b(b>1.9)=3;
b(b<1.9&b>-2.7)=2;
bm=kron(b,ones(25,25));
bn=bm(1:337,1:265);
b1=bn;
b1(b1==2|b1==3)=0;
b2=bn;
b2(b2==1|b2==3)=0;
b3=bn;
b3(b3==1|b3==2)=0;

%读取DOC表层浓度数据
load('results\DOC_2010.mat','DOC_SP','DOC_SU','DOC_AU','DOC_WI');
DOC=DOC_SP;

%读取真光层数据
name1='A20100802010171.L3m_SNSP_ZLEE_Zeu_lee_4km.nc';
zeu_sp=read_Zeu(name1);
zeu_sp=zeu_sp(7129:7465,1345:1609);

SUM5=200*b1.*DOC+b2.*(70*DOC+(zeu_sp-70)*0.816)/2+b3.*(70*DOC+(zeu_sp-70)*0.816)/3;
SUM1=200*b1.*DOC+b2.*(70*DOC+130*0.816)/2+b3.*(70*DOC+130*0.816)/3;

%计算总量
sum_sp_doc=sum_sum(SUM1); %全水柱
zeu_sp_doc=sum_sum(SUM5); %真光层

%夏季
%读取温盐数据
name1='GDCSM_Argo_201006.nc';
[S,T,Lat,Lon]=read_xy_nc(InPath,name1,'salt','temp');
S=S(:,:,1,1);
S=reshape(S,172,121);
T=T(:,:,1,1);
T=reshape(T,172,121);

ind1=find(Lon>119,1);
ind2=find(Lon>132,1);
ind3 = find(Lat>23,1);
ind4 = find(Lat>34,1);

b=(T(ind1:ind2,ind3:ind4)-16.63)/7.41+(5*S(ind1:ind2,ind3:ind4)-167.05)/3.57;
b(b<-2.7)=1;
b(b>1.9)=3;
b(b<1.9&b>-2.7)=2;
bm=kron(b,ones(25,25));
bn=bm(1:337,1:265);
b1=bn;
b1(b1==2|b1==3)=0;
b2=bn;
b2(b2==1|b2==3)=0;
b3=bn;
b3(b3==1|b3==2)=0;
DOC=DOC_SU;

%读取真光层数据
name1='A20101722010263.L3m_SNSU_ZLEE_Zeu_lee_4km.nc';
zeu_su=read_Zeu(name1);
zeu_su=zeu_su(7129:7465,1345:1609);
SUM6=200*b1.*DOC+b2.*(80*DOC+(zeu_su-80)*0.816)/2+b3.*(80*DOC+(zeu_su-80)*0.816)/3;
SUM2=200*b1.*DOC+b2.*(80*DOC+120*0.816)/2+b3.*(80*DOC+120*0.816)/3;

%计算总量
sum_su_doc=sum_sum(SUM2); %全水柱
zeu_su_doc=sum_sum(SUM6); %真光层

%秋季
%读取温盐数据
name1='GDCSM_Argo_201009.nc';
[S,T,Lat,Lon]=read_xy_nc(InPath,name1,'salt','temp');
S=S(:,:,1,1);
S=reshape(S,172,121);
T=T(:,:,1,1);
T=reshape(T,172,121);

ind1=find(Lon>119,1);
ind2=find(Lon>132,1);
ind3 = find(Lat>23,1);
ind4 = find(Lat>34,1);

b=(T(ind1:ind2,ind3:ind4)-16.63)/7.41+(5*S(ind1:ind2,ind3:ind4)-167.05)/3.57;
b(b<-2.7)=1;
b(b>1.9)=3;
b(b<1.9&b>-2.7)=2;
bm=kron(b,ones(25,25));
bn=bm(1:337,1:265);
b1=bn;
b1(b1==2|b1==3)=0;
b2=bn;
b2(b2==1|b2==3)=0;
b3=bn;
b3(b3==1|b3==2)=0;
DOC=DOC_AU;

%读取真光层数据
name1='A20102642010354.L3m_SNAU_ZLEE_Zeu_lee_4km.nc';
zeu_au=read_Zeu(name1);
zeu_au=zeu_au(7129:7465,1345:1609);
SUM7=zeu_au.*DOC;
SUM3=200*DOC;

%计算总量
sum_au_doc=sum_sum(SUM3); %全水柱
zeu_au_doc=sum_sum(SUM7); %真光层


%冬季
%读取温盐数据
name1='GDCSM_Argo_201012.nc';
[S,T,Lat,Lon]=read_xy_nc(InPath,name1,'salt','temp');
S=S(:,:,1,1);
S=reshape(S,172,121);
T=T(:,:,1,1);
T=reshape(T,172,121);

ind1=find(Lon>119,1);
ind2=find(Lon>132,1);
ind3 = find(Lat>23,1);
ind4 = find(Lat>34,1);

b=(T(ind1:ind2,ind3:ind4)-16.63)/7.41+(5*S(ind1:ind2,ind3:ind4)-167.05)/3.57;
b(b<-2.7)=1;
b(b>1.9)=3;
b(b<1.9&b>-2.7)=2;
bm=kron(b,ones(25,25));
bn=bm(1:337,1:265);
b1=bn;
b1(b1==2|b1==3)=0;
b2=bn;
b2(b2==1|b2==3)=0;
b3=bn;
b3(b3==1|b3==2)=0;
DOC=DOC_WI;

%读取真光层数据
name1='A20103552011079.L3m_SNWI_ZLEE_Zeu_lee_4km.nc';
zeu_wi=read_Zeu(name1);
zeu_wi=zeu_wi(7129:7465,1345:1609);
SUM8=zeu_wi.*DOC;
SUM4=200*DOC;

%计算总量
sum_wi_doc=sum_sum(SUM4); %全水柱
zeu_wi_doc=sum_sum(SUM8); %真光层