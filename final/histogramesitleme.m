close all
clear all
image = imread('deneme2.jpg');
Igray = rgb2gray(image);
boyut = size(Igray);
hk = zeros(1,256);
figure; imshow(Igray);

for r = 1: boyut(1)
  for c = 1 : boyut(2)
    k = Igray(r,c) + 1;
    hk(k) = hk(k) + 1;
  endfor
endfor
pk = hk / numel(Igray);
sk = zeros(1,256);
sk(1) = pk(1);
for k = 2:256
  sk(k) = sk(k-1) + pk(k);
endfor
sk255 = round(sk * 255);
Igray_eq = Igray;

for r=1:boyut(1)
  for c=1:boyut(2)
    k = Igray(r,c) + 1;
    Igray_eq(r,c) = sk255(k);
  endfor
endfor
figure; imshow(Igray_eq);
