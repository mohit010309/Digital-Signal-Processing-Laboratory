img = imread('cameraman.tif');
block = img(1:8,1:8);
disp(block);
d1 = dct2(block);
disp(d1);