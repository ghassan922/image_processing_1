function [ img ] = smooth( )
%SMOOTH Summary of this function goes here
%   Detailed explanation goes here
    subplot(2,1,1);
    imshow('test.gif');
    img = imread('test.gif');
    [r c] = size(img);
    for i= 1:r
        for j = 1:c
            sum = 0;
            currentRow = i-2;
            for k = currentRow:currentRow+4
                currentCol = j-2;
                for l = currentCol:currentCol+4
                    if(k<1 || k>r || l<1 || l>c)
                        sum = uint32(sum + 0);
                    else
                        sum = uint32(sum + uint32(img(k,l)));
                    end
                end
            end
            sum = uint32(sum / 25);
            img(i,j) = sum;
        end
    end
    
    subplot(2,1,2);
    imshow(img);
end

