clear all
close all
image = imread('C:\Users\omers\MATLABCalisma\deneme2.jpg');
Igray = rgb2gray(image);
boyut = size(Igray);
%mask = [-1 -2 -1; 0 0 0; 1 2 1];
%mask = [0 -1 0; -1 4 -1; 0 -1 0];
mask = [0 0 0; 0 2 0; 0 0 0];
mask_size = size(mask);
Iout = zeros(boyut);
figure;imshow(Igray);
Iout = double(Iout);
for r=2:boyut(1) - 1
  for c=2:boyut(2) - 1
    window = Igray(r-1:r+1,c-1:c+1);
    carpim_matris = double(window .* mask);
    toplam = sum(carpim_matris(:));
    Iout(r,c) = toplam;
  endfor
endfor

figure;imshow(Iout,[]);
