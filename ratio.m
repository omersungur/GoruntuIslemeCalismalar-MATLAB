close all
clear all
image = imread('deneme.jpg');
img = double(image(:,:,1));
img = img + 60;
figure ; imshow(img);

max_value = max(img(:));
ratio = 255/max_value;
img = img * ratio;
figure ; imshow(img,[]);
