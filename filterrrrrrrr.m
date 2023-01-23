clear all
close all
image = imread('C:\Users\omers\MATLABCalisma\deneme2.jpg');
Igray = rgb2gray(image);
F = fft(Igray);
h = zeros(size(F));
A = 5;
B = 3;
D1 = 40;
D2 = 30;
for u =1:size(F,1)
  for v = 1:size(F,2)
    D = sqrt((u-(size(F,1)/2))^2 + (v-size(F,2))^2);
    h(u,v) = A * exp(-D^2/2D1^2) - B*exp(-D^2/2D2^2);
  endfor
endfor
ifft(F.*h);


