clear all
close all
image = imread('saltandpapper2.png');
Igray = rgb2gray(image);
figure;imshow(Igray);
boyut = size(Igray);
window_size = [7 7];

r_basla = (window_size(1) + 1) / 2;
r_bitis = boyut(1) - (window_size(1)-1) / 2;
c_basla = (window_size(2) + 1) / 2;
c_bitis = boyut(2) - (window_size(2) - 1) / 2;
delta_r = (window_size(1) - 1) / 2;
delta_c = (window_size(2) - 1) / 2;
Igray_mean = Igray;
indis_mean = (window_size(1) * window_size(2) + 1) / 2;

for i = r_basla:r_bitis
  for j = c_basla:c_bitis
    window = Igray(i - delta_r:i + delta_r, j - delta_c:j + delta_c);
    vector = [];
    for ii=1:size(window,1)
      vector = [vector window(ii,:)];
    endfor
    sorted_vector = sort(vector);
    Igray_mean(i,j) = sorted_vector(indis_mean);
  endfor
endfor
figure;imshow(Igray_mean);

