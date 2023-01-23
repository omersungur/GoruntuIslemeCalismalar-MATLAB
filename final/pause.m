clear all
close all
image = imread('deneme2.jpg');
Igray = rgb2gray(image);
boyut = size(Igray);
figure; imshow(Igray);
figure;

for r=1:boyut(1)
  Igray(r,:) = Igray(r,:) + 50;
  imshow(Igray);
  pause(0.05);
endfor
