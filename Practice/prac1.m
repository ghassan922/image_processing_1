%create image 
m = zeros(200,200);
m(50:150,50:150) = 1;
subplot(2,3,1)
imshow(m,[]);

%Apply 3*3 box filter
w=[1 1 1;1 1 1;1 1 1]/9;
m2 =imfilter(m,w);
subplot(2,3,2);
imshow(m2,[]);
imtool(m2,[]);

%apply 15*15 box filter
w = fspecial('average',[15 15]);
m3 = imfilter(m,w);
subplot(2,3,3);
imshow(m3,[]);
imtool(m3,[]);

%show average reuces noise
m = m + randn(200,200)*0.5;
subplot(2,3,4);
imshow(m,[]);
w=fspecial('average',[5 5]);
m4 = imfilter(m,w);
subplot(2,3,5);
imshow(m4,[]);