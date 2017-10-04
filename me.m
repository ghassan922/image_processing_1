function Lab6(path)
img = imread(path);
%img = imread('sr.jpg');
%img = single(img);

noisy_img = imnoise(img,'gaussian',0.3);
figure
subplot(2,3,1);
imshow(img);
title('Original Image');


subplot(2,3,2);
imshow(noisy_img);
title('Noisy Image "Gaussian"');

    h= fspecial('prewitt');
    im_prewitt =imfilter(img,h);
    subplot(2,3,3);
    imshow(im_prewitt);
    title('PERWITT');
    
    
    h= fspecial('laplacian');
    im_lap =imfilter(img,h);
    subplot(2,3,4);
    imshow(im_lap);
    title('LAPLACIAN');
    
    
    
    h= fspecial('sobel');
    im_sob =imfilter(img,h);
    subplot(2,3,5);
    imshow(im_sob);
    title('SOBEL');
    
    
    
    h= fspecial('log');
    im_log =imfilter(img,h);
    subplot(2,3,6);
    imshow(im_log);
    title('LAPLACIAN-OF-GAUSSIAN');
    
    
    img = single(img);
    figure
    img_edges = edge(img);
    subplot(2,3,1);
    imshow(img_edges);
    title('ORIGINAL EDGES');
    
    
    sob_edges = edge(img,'sobel');
    subplot(2,3,2);
    imshow(sob_edges);
    title('Sobel Edges');
    
    
    Mysob_edges = edge(im_sob);
    subplot(2,3,3);
    imshow(Mysob_edges);
    title('My-Sobel Edges');
    
    pre_edges = edge(img,'prewitt');
    subplot(2,3,4);
    imshow(pre_edges);
    title('Prewitt Edges');
    
    lap_edges = edge(img,'log');
    subplot(2,3,5);
    imshow(lap_edges);
    title('laplacianOfGaussian Edges');
    
    rob_edges = edge(img,'roberts');
    subplot(2,3,6);
    imshow(rob_edges);
    title('roberts Edges');
    
    
end
    