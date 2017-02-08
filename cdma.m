function cdma()
data = input('enter data');
l=length(data);
data1=[];
for i=0:1:l/8-1
    data1=[data1;data((8*i)+1:8*(i+1))]
end
data2=data1';
data2

data3=data2;
decode=reshape(data3,[1,64]);
decode
