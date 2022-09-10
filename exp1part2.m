clc;
close all;
clear all;

for i=1:32
for j=1:32
if((rem((i+j),2)==0))
g(i,j) = 0;
else
g(i,j) = 1;
end
end
end
figure,
subplot(3,2,1);
imshow(g);
title('Binary Image 1');

%Image 2

for i=1:32
for j=1:32
if(rem(i,2)==1)
h(i,j) = 1;
else
h(i,j) = 0;
end
end
end

subplot(3,2,2);
imshow(h);
title('Binary Image 2');


i = g & h;
subplot(3,2,3);
imshow(i);
title('Logical AND');

j = g | h;
subplot(3,2,4);
imshow(j);
title('Logical OR');

k = xor(g,h);
subplot(3,2,5);
imshow(k);
title('Logical XOR');
