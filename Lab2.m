function Lab2
img = imread('cameraman.tif');
subplot(4,4,1);
imshow(img);
img_hist = imhist(img);
subplot(4,4,2);
plot(img_hist);

img_add = img+50 ;
img_hist = imhist(img_add);
subplot(4,4,3);
imshow(img_add);
subplot(4,4,4);
plot(img_hist);

img_sub = img-50 ;
img_hist = imhist(img_sub);
subplot(4,4,5);
imshow(img_sub);
subplot(4,4,6);
plot(img_hist);

img_hist = imhist(img);
cum_hist = cumsum(img_hist);
subplot(4,4,7);
bar(cum_hist);

im_hist_eq = histeq(img);
subplot(4,4,8);
imshow(im_hist_eq);

img_double = im2double(img);
min_val = min(min(img_double));
max_val = max(max(img_double));
im_contrast = imadjust(img,[min_val;max_val],[0;1]);
subplot(4,4,9);
imshow(im_contrast);
img_hist = imhist(im_contrast);
subplot(4,4,10);
plot(img_hist);
end