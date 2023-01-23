clear all
close all
image = imread('C:\Users\omers\MATLABCalisma\deneme2.jpg');
Igray = rgb2gray(image);
Igray = double(Igray);
boyut = size(Igray);
Ikopya = Igray;
for r=1:boyut(1)
  for c=1:boyut(2) - 1
    Ikopya(r,c) = Igray(r,c+1)  - Igray(r,c);
  endfor
endfor
Ikopya(:,end) = Ikopya(:,end-1);
