clear all
close all
image = imread('C:\Users\omers\MATLABCalisma\deneme2.jpg');
Igray = rgb2gray(image);
boyut = size(Igray);
mask = [0 -1 0; -1 4 -1; 0 -1 0];
mask_size = size(mask);
Iout = Igray;
dongu_basla_r = (mask_size(1) + 1) / 2;
dongu_basla_c = (mask_size(2) + 1) / 2;
marj_r = (mask_size(1) - 1) / 2;
marj_c = (mask_size(2) - 1) / 2;
figure;imshow(Iout);
for r=dongu_basla_r:boyut(1) - marj_r
  for c=dongu_basla_c:boyut(2) - marj_c
    window = Igray(r - marj_r: r+marj_r, c-marj_c: c+marj_c);
    carpim_matris = window .* mask;
    toplam = sum(carpim_matris(:));
    Iout(r,c) = toplam;
  endfor
endfor

figure;imshow(Iout);
