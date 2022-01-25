% 19ucc023
% Mohit Akhouri
% Experiment 6 - Observation 1

% This code will apply inbuilt functions "dct2" and "idct2" on the image
% "cameraman.tif" and observe the compressed image
% Lastly , after knocking off half the pixels , we will observe the
% artifact effects in the image

clc;
clear all;
close all;

img = imread('cameraman.tif'); % Reading of image file in variable 'img'

figure;
subplot(1,2,1);
imshow(img);
title('Original Image - cameraman.tif'); % Plot of Original Image

dct_img = dct2(img); % computing Discrete Cosine Transform ( DCT ) of img

subplot(1,2,2);
imshow(dct_img);
title('DCT of image - cameraman.tif'); % Plot of DCT of camerman.tif
sgtitle('19ucc023 - Mohit Akhouri');

% Compression Algorithm for the image starts from here
% ALGORITHM : knocking off half the pixels in the compressed image
for i=1:256
    for j=1:256
        if j<=128
            dct_img(i,j)=dct_img(i,j); % keeping half the pixels
        else
            dct_img(i,j)=0; % knocking off other half of pixels
        end
    end
end

figure;
subplot(1,2,1);
imshow(dct_img); % plot of DCT of image after knocking off half pixels
title('DCT of image - cameraman.tif after KNOCKING OFF half pixels');

idct_img = uint8(idct2(dct_img)); % computing IDCT of compressed image (dct_img) after knocking off half pixels

subplot(1,2,2);
imshow(idct_img); % plot of IDCT of compressed image demonstrating ARTIFACT EFFECTS
title('IDCT of compressed image - cameraman.tif after KNOCKING OFF half pixels (ARTIFACT EFFECTS)');
sgtitle('19ucc023 - Mohit Akhouri');
