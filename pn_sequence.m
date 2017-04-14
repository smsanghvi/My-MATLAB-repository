%code to generate a pn sequence (pseudo-noise) and decode the original message
function pn_sequence()

inp = input('enter number of message elements ');
orig_sequence=zeros(1,inp);

display('enter the initial flip-flop sequence');
for i=1:1:inp
    orig_sequence(i)= input('enter element');
end

%finding pn sequence
pn_sequence=zeros(1,2^length(orig_sequence)-1);
for i =1:1:length(pn_sequence)
    v=length(orig_sequence);
    pn_sequence(i)= orig_sequence(length(orig_sequence));
    temp=xor(orig_sequence(length(orig_sequence)-

1),orig_sequence(length(orig_sequence)));
    
    while v~=1
        orig_sequence(v)=orig_sequence(v-1);
        v=v-1;
    end
    orig_sequence(1)=temp;  
end
pn_sequence

%finding output
message = zeros(1,inp);
display('enter the message elements ');
for i=1:1:inp
    message(i) = input('enter element ');
end

z=1;
output = zeros(1,length(pn_sequence)*length(message));
for i=1:1:length(message)
    for j=1:1:length(pn_sequence)
        output(z)=xor(pn_sequence(j),message(i));
        z=z+1;
    end
end
output

%finding the decoded sequence
pn_dec = zeros(1,length(pn_sequence)*length(message));
a=length(pn_sequence);
for i =1:1:length(pn_dec)
    if i>length(pn_sequence) && mod(i,a)~=0
        pn_dec(i) = pn_sequence(mod(i,a));
    elseif i>length(pn_sequence) && mod(i,a)==0
        pn_dec(i) = pn_sequence(a);
    else
        pn_dec(i) = pn_sequence(i);
    end
end
pn_dec

dec_out = zeros(1,length(pn_sequence)*length(message));

for i=1:1:length(pn_sequence)*length(message)
    dec_out(i)=xor(output(i),pn_dec(i));
end
dec_out

%finding the original message
dec_messg = zeros(1,length(message));
k=1;
for i=1:1:length(message)
    dec_messg(i)=dec_out(k);
    
    k=k+length(pn_sequence);
end
dec_messg
