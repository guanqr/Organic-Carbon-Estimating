function m2=H_TRANS(m)
[x,y]=size(m);
j=1;
a=zeros(x,y);
for i=1:y-1
    a(:,j)=(m(:,i)+m(:,i+1))/2;
    j=j+1;
end
m2=[m;a];
m2=reshape(m2,x,2*y);
m2=m2(1:x,1:2*y-1)

