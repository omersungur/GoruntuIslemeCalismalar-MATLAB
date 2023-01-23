image = imread('deneme2.jpg');
Igray = rgb2gray(image);
boyut = size(Igray);
figure; imshow(Igray);
k=220;

for r=1:boyut(1)
  for c=1:boyut(2)
    if Igray(r,c) < k
      Igray(r,c) = 0;
  else
    Igray(r,c) = 255;
    endif
  endfor
endfor
figure; imshow(Igray);

