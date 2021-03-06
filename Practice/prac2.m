m = imread('moon.tif');
subplot(1,3,1);
imshow(m,[]);
%Create sobel filter 
%can also do hy = fspecial('sobel');
hy = [-1 -2 -1;
       0 0 0  ;
      +1 +2 +1];
hx = hy';
m = double(m);% remove this and see the result with uint
mx=imfilter(m,hx);
my=imfilter(m,hy);

subplot(1,3,2);
imshow(mx,[]);
subplot(1,3,3);
imshow(my,[]);
%compute gradiant magnitude
mg=(mx.*2 + my.*2).*0.5;
figure,imshow(mg,[]);

% arctan
Mang = atan2(my,mx);
figure,imshow(Mang,[]);

%large magnitude
Mask=(mg>100);
figure, imshow(double(Mask) .*Mang, []);
colormap hsv