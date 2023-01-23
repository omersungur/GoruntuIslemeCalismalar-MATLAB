image = imread('indir.jfif');
Igray = rgb2gray(image);
boyut_gray = size(Igray);
Igray = double(Igray);
Igray_4komsuluk = Igray;
figure;imshow(Igray_4komsuluk,[]);

for r=2:boyut_gray(1)-1
  for c=2:boyut_gray(2)-1
    Igray_4komsuluk(r,c) = (Igray(r,c) + Igray(r,c-1) + Igray(r,c+1)...
    + Igray(r-1,c) + Igray(r+1,c))/5;

  endfor
endfor

figure; imshow(Igray_4komsuluk,[]);

