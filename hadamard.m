function hadamard()
n=input('enter dimension');
n=log(n)/log(2);
hada = [1,1,;1,-1];
hada1=zeros(length(hada),length(hada));
for i=2:1:n
    hada1(1:2^i/2,1:2^i/2)=hada;
    hada1(2^i/2-1,2^i:2^i/2)=hada;
    hada1(1:2^i/2,2^i/2-1,2^i)=hada;
    hada1(2^i/2-1,2^i,2^i/2-1,2^i)=-1*hada;
    hada=hada1;
end

hada1=(hada1+1)/2
