clear all
close all
image = imread('deneme2.jpg');
Igray = rgb2gray(image);
boyut = size(Igray);
figure;imshow(Igray)

for r = 1: boyut(1)
  for c = 1: boyut(2)
    if Igray(r,c) <= 63
      Igray(r,c) = Igray(r,c) + 45;
    elseif Igray(r,c) <= 126
      Igray(r,c) = Igray(r,c) + 30;
    elseif Igray(r,c) <= 189
      Igray(r,c) = Igray(r,c) + 15;
    else
       Igray(r,c) = Igray(r,c) + 5;
    endif
  endfor
endfor
figure;imshow(Igray)
