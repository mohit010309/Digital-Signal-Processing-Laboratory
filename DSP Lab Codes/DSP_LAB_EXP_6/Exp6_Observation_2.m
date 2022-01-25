% 19ucc023
% Mohit Akhouri
% Experiment 6 - Observation 2

% This code will use the function "myCompression.m" function to calculate
% the DCT of image "cameraman.tif" and compare the results with inbuilt
% function dct2 and idct2

clc;
clear all;
close all;

img = imread('cameraman.tif'); % Reading of image file in variable 'img'

dct_inbuilt = dct2(img); % INBUILT DCT of image - cameraman.tif
dct_myCompression = myCompression(img); % USER-DEFINED DCT of image - cameraman.tif

figure;
imshow(img); % Plot of image - cameraman.tif
title('Original Image - cameraman.tif');
sgtitle('19ucc023 - Mohit Akhouri');

figure;
subplot(1,2,1);
imshow(dct_inbuilt); % Plot of INBUILT DCT of image - cameraman.tif
title('DCT of image - cameraman.tif from INBUILT FUNCTION dct2(im)');

subplot(1,2,2);
imshow(dct_myCompression); % Plot of DCT calculated from USER-DEFINED Function 'myCompression'
title('DCT of image - cameraman.tif from USER DEFINED FUNCTION myCompression.m');
sgtitle('19ucc023 - Mohit Akhouri');
