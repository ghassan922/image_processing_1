function Lab3(path,n,m,fil)
image = imread(path);
noisy_im = imnoise(image,'salt & pepper');

if fil==1
    h= fspecial('average',[n m]);
    FM =imfilter(image,h);
    FM =imfilter(noisy_im,h);

else if fil ==2
        FM = medfilt2(image,[n m]);
    else if fil ==3
            FM= ordfilt2(image,2,true(3));
        else if fil==4
                h = fspecial('prewitt');
                FM=imfilter(image,h);
            else if fil == 5 
                h = fspecial('sobel');
                FM= imfilter(image,h);
                else if fil ==6 
                h = fspecial('laplacian');
                FM =imfilter(image,h);
                    end
                end
            end
        end
    end
end

subplot(1,3,1);
imshow(image);
subplot(1,3,2);
imshow(noisy_im);
subplot(1,3,3);
imshow(FM);
end