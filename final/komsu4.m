close all
clear all
image = imread('deneme2.jpg');
Igray = rgb2gray(image);
Igray = double(Igray);
boyut = size(Igray);
Igray_yedek = Igray;
figure;imshow(Igray_yedek,[]);

for r = 2:boyut(1) - 1
  for c = 2 : boyut(2) - 1
    Igray_yedek(r,c) = (Igray(r,c) + Igray(r,c-1) + Igray(r-1,c) + Igray(r,c+1) + Igray(r+1,c)) / 5;
  endfor
endfor

figure;imshow(Igray_yedek,[]);
