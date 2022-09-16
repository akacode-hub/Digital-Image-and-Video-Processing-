clc;
clear all;
close all;
a=imread('C:\Users\admin\Desktop\GG.jpg');

% RGB TO YCbCr

c=rgb2ycbcr(a);
figure
subplot(1,2,1)
imshow(a)
title('Original image')
subplot(1,2,2)
imshow(c)
title('YCbCr image')

a=double(a);
[R C D]=size(a);
red=a(:,:,1);
green=a(:,:,2);
blue=a(:,:,3);
Y=16+((65.481*red)+(128.553*green)+(24.966*blue));
Cb=128+((-37.797*red)-(74.203*green)+(112*blue));
Cr=128+((112*red)-(93.786*green)-(18.214*blue));

figure
subplot(2,2,1);
imshow(uint8(a));
title('original image');
subplot(2,2,2);
imagesc(Y);
title('Y component');
subplot(2,2,3);
imagesc(Cb);
title('Cb component');
subplot(2,2,4);
imagesc(Cr);
title('Cr component');


%RGB TO GRAY-BW IMAGE
subplot(3,1,1);
imshow(a);
title('Original Image');
b=rgb2gray(a);
subplot(3,1,2);
imshow(b);
title('Gray Scale Image');
c1=im2bw(b);
subplot(3,1,3);
imshow(c1);
title('Black and White Image');



%RGB to R,G,B
red=a(:,:,1);
subplot(2,2,2);
imshow(red);
title('RED');

green=a(:,:,2);
subplot(2,2,3);
imshow(green);
title('GREEN');

blue=a(:,:,3);
%subplot(2,2,4);
imshow(blue);
title('BLUE');

[x,y,p]=size(a);

d=zeros(x,y);
subplot(2,2,1);
imshow(d);
title('ZEROS');

rcomp=cat(3,red,d,d);
subplot(2,2,2);
imshow(rcomp);
title('RED COMPONENT');

gcomp=cat(3,d,green,d);
subplot(2,2,3);
imshow(gcomp);
title('GREEN COMPONENT');

bcomp=cat(3,d,d,blue);
subplot(2,2,4);
imshow(bcomp);
title('BLUE COMPONENT');
