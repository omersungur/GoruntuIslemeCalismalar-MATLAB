clear all
close all
image = imread('deneme2.jpg');
Igray = rgb2gray(image);
boyut = size(Igray);
figure;imshow(Igray);

Inegative = Igray;

for r = 1: boyut(1)
  for c = 1: boyut(2)
    Inegative(r,c) = 255-Igray(r,c);
  endfor
endfor

figure;imshow(Inegative);
