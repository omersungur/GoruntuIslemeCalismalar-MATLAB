image = imread('deneme2.jpg');
%figure;imshow(image);
img = image(:,:,2);
img = img + 100;
figure;imshow(img);

