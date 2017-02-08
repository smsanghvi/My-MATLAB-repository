img=imread('cameraman.tif');
figure(1);
imshow(img)
b=img;
d=img;
[r,c,n]=size(img);

for i=1:1:r
    for j=1:1:c
        if j<c
            img(i,j)=abs(img(i,j)-img(i,j+1));
        elseif j==c
            img(i,j)=abs(img(i,j)-img(i,j-1));
        end
    end
end

for i=1:1:r
    for j=1:1:c
        if i<r
            b(i,j)=abs(b(i,j)-b(i+1,j));
        elseif i==r
            img(i,j)=abs(b(i,j)-b(i-1,j));
        end
    end
end

for i=1:1:r
    for j=1:1:c
        d(i,j)=(img(i,j)+b(i,j))/2;
    end
end

for i=1:1:r
    for j=1:1:c
        d(i,j)=255-d(i,j);
    end
end

figure(2);
imshow(d)
