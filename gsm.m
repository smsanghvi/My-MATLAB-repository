function gsm(a,b)
c=zeros(1,length(a)+length(b));
shift = length(b)/2.0;

d=b;
%shift
for i=1:1:length(b)
    if (i+shift)>length(b)
        d(i)=b(i-shift);
    else
        d(i)=b(i+shift);
    end
end
%encoding
for i=1:1:length(c)
    if mod(i,2)~=0
        c(i)=a(floor(i/2)+1);
    else
        c(i)=d(i/2);
    end
end

c

%decoding

g=zeros(1,length(a));
h=zeros(1,length(b));

for i=1:1:length(a)+length(b)
    if mod(i,2)~=0
        g(floor(i/2)+1)=c(i);
    else
        h(i/2)=c(i);
    end
end

g

%deshift h
m=h;
for i=1:1:length(b)
    if (i+shift)>length(b)
        m(i)=h(i-shift);
    else
        m(i)=h(i+shift);
    end
end

m
