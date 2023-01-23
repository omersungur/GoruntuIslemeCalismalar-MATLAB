clear all
close all
image = imread ('deneme2.jpg');
Igray = rgb2gray(image);
figure; imshow(Igray);
boyut = size(Igray);
window_size = [3 3];
Igray_local_eq = Igray;

r_basla = (window_size(1) + 1) / 2;
c_basla = (window_size(2) + 1) / 2;
r_bitir = boyut(1) - (window_size(1) - 1) / 2;
c_bitir = boyut(2) - (window_size(2) - 1) / 2;
delta_r = (window_size(1) - 1) / 2;
delta_c = (window_size(2) - 1) / 2;

for i=r_basla:r_bitir
  for j=c_basla:c_bitir
    window = Igray(i - delta_r:i + delta_r, j - delta_c: j + delta_c);
    hk = zeros(1,256);
    for r = 1:window_size(1)
      for c = 1: window_size(2)
        k = window(r,c) + 1;
        hk(k) = hk(k) + 1;
      endfor
    endfor
    pk = hk / numel(window);
    sk = zeros(1,256);
    sk(1) = pk(1);
    for k=2:256
      sk(k) = sk(k-1) + p(k);
    endfor
    sk255 = round(255 * sk);
    k = Igray(i,j) + 1;
    Igray_local_eq(i,j) = sk255(k);
  endfor
endfor
figure;imshow(Igray_local_eq);
