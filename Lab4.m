function [mm] =  Lab4(path,cutoff,filter)
MyFilter =[];
img = imread(path);
[x y] = size(img);

f = fft2(double(img));

f_shift= fftshift(f);
mag_img=abs(f_shift);

%HPF
if filter ==1
  MyFilter=ones(x,y);
  MyFilter(1+cutoff:x-cutoff,1+cutoff:y-cutoff) = 0;
  %LPF
elseif filter ==2
    MyFilter=zeros(x,y);
  MyFilter(1+cutoff:x-cutoff,1+cutoff:y-cutoff) = 1;
end

HPF_result = f_shift .* double(MyFilter);
edges = ifft2(ifftshift(HPF_result));
subplot(2,2,1);
imshow(img);
subplot(2,2,2);
imshow(uint8(mag_img));
subplot(2,2,3);
imshow(uint8(real(edges)));
subplot(2,2,4);
imshow(MyFilter);

end