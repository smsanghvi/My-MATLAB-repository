a=imread('cameraman.tif');
[r,c,z]=size(a);
figure(1);
imshow(a)
for i= 1:1:r-1
    for j=1:1:c-1
        if(i==1 && j==1)
            a(i,j)= (a(i,j)+a(i+1,j) + a(i,j+1))/3 ;
        elseif(i==1)
            a(i,j) = (a(i,j) + a(i,j+1) + a(i, j-1)+ a(i+1,j))/4;
        elseif(j==1)
            a(i,j) = (a(i,j) + a(i+1,j) + a(i-1, j)+ a(i,j+1))/4;
        elseif(i==r)
            a(i,j) = (a(i,j) + a(i,j+1) + a(i, j-1)+ a(i-1,j))/4;
        elseif(j==c)
            a(i,j) = (a(i,j) + a(i+1,j) + a(i-1, j)+ a(i,j-1))/4;
        else
            a(i,j) = (a(i,j) + a(i+1,j) + a(i-1, j)+ a(i,j+1)+a(i,j-1))/5;
        end
    end
end
figure(2);
imshow(a)
