function m2=L_TRANS(m)
[x,y]=size(m);
j=1;
a=zeros(x,y);
for i=1:x-1
    a(j,:)=(m(i,:)+m(i+1,:))/2;
    j=j+1;
end
m2=[m(1,:);a(1,:);m(2:x,:)];
 for i=2:x-1
m2=[m2(1:2*i-1,:);a(i,:);m2(2*i:x+i-1,:)];
 end
 

