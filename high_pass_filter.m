a=imread('cameraman.tif');
[r,c,z]=size(a);
figure(1);
imshow(a)
b=a;
d=a;

for i= 1:1:r-1
    for j=1:1:c-1
        if (j== c-1)
            a(i,j)= abs(a(i,j)-a(i,j-1));
        else
            a(i,j)= abs(a(i,j)-a(i,j+1));
        end
    end
end
figure(2);
imshow(a)

for j= 1:1:c-1
    for i=1:1:r-1
        if (i== r-1)
            b(i,j)= abs(b(i,j)-b(i-1,j));
        else
            b(i,j)= abs(b(i,j)-b(i+1,j));
        end
    end
end
figure(3);
imshow(b);

for i= 1:1:r
    for j=1:1:c
        d(i,j)= (b(i,j)+a(i,j))/2;
        d(i,j)=255-d(i,j);
    end
end

figure(4);
imshow(d)
     
