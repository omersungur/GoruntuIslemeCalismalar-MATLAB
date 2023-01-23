clear all
close all
image = imread('C:\Users\omers\MATLABCalisma\deneme2.jpg');
Igray = rgb2gray(image);
boyut = size(Igray);
mask = [-1 1];
mask_size = size(mask);
Iout = Igray;
figure;imshow(Iout);
for r=1:boyut(1) - 1;
  for c=1:boyut(2) - 1;
    window = Igray(r,c:c+1);
    carpim_matris = window.*mask;
    toplam = sum(carpim_matris(:));
    Iout = toplam;
  endfor
endfor
Iout(:,end) = Iout(:,end-1);
figure;imshow(Iout);
