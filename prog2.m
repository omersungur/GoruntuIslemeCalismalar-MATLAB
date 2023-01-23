image = imread('deneme.jpg');
img = double(image(:,:,1));
img = img + 60;
figure; imshow(img,[]);
