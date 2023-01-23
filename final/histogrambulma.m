close all
clear all
image = imread('deneme2.jpg');
Igray = rgb2gray(image);
h = zeros(1,256);
boyut = size(Igray);

for r=1:boyut(1)
  for c=1:boyut(2)
    indis = Igray(r,c) + 1;
    h(indis) = h(indis) + 1;
  endfor
endfor
p = h/numel(Igray);
