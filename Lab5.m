im = imread('cameraman.tif');

im_noise = imnoise(im,'gaussian',0.3);
im_restore = wiener2(im_noise,[3 3]);
subplot(1,3,1);
imshow(im);
title('Original Image');
subplot(1,3,2);
imshow(im_noise);
title('Noisy Image');
subplot(1,3,3);
imshow(im_restore);
title('Restored Image');


im=imread('pout.tif');
im_noise = imnoise(im,'salt & pepper');
%max order filter
m_ordmax = ordfilt2(im_noise,9,ones(3,3));
%min order filter
m_ordmin = ordfilt2(im_noise,1,ones(3,3));
%median filter
m_med = medfilt2(im_noise,[3 3]);

%average filter
    h= fspecial('average',[3 3]);
    m_average =imfilter(im_noise,h);
    
    figure;
    subplot(2,3,1);
    imshow(im);
    title('Originl image');
     subplot(2,3,2);
    imshow(im_noise);
    title('Noisy image');
     subplot(2,3,3);
    imshow(m_ordmax);
    title('Max Order Filter');
     subplot(2,3,4);
    imshow(m_ordmin);
    title('Min Order Filter');
     subplot(2,3,5);
    imshow(m_med);
    title('Median Filter');
     subplot(2,3,6);
    imshow(m_average);
    title('Avergae Filter');