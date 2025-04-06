

% Read an image
%originalImage = imread('Z:\Digital image Processing\Test Images ALL\Fig0809(a).tif');
%originalImage = imread('Z:\Digital image Processing\Test Images ALL\Fig0638(a)(lenna_RGB).tif');



% Read an image
originalImage = imread('C:\Users\student\Desktop\Lenna.png')
im2 = rgb2gray(originalImage);
subplot(3,5, 1), imshow(im2), title('Original Image');


% Apply a Gaussian filter
im3 = imnoise(im2,'gaussian');
subplot(3,5, 2), imshow(im3), title('gaussian Image');

% Apply a Salt and pepper filter
im4 = imnoise(im2,'salt & pepper', 0.01);
subplot(3,5, 3), imshow(im4), title('salt & pepper');

% Apply a Gaussian filter
im5 = imnoise(im2,'speckle');
subplot(3,5, 4), imshow(im3), title('speckle');


% Apply a poisson filter
poisson_img1= imnoise(im2,'poisson');
subplot(3,5, 5), imshow(poisson_img1), title('poisson');





% Apply a median filter
im6 = medfilt2(im3);
subplot(3,5, 7), imshow(im6), title('Median  -  gaussian Image');

% Apply a median filter
im7 = medfilt2(im4);
subplot(3,5, 8), imshow(im7), title('Median  -  Remove salt & pepper');


% Apply a median filter
im8 = medfilt2(im5);
subplot(3,5, 9), imshow(im8), title('Median  -  Remove speckle');


% Apply a median filter
poisson_img= medfilt2(poisson_img1);
subplot(3,5, 10), imshow(poisson_img), title('Median  -  Remove poisson');




% Apply a mean filter
im9 = imfilter(im3, fspecial('average', [7, 7]));
subplot(3,5, 12), imshow(im9), title('Mean  - gaussian Image');


% Apply a mean filter
im10 = imfilter(im4, fspecial('average', [3, 3]));
subplot(3,5, 13), imshow(im10), title('Mean  - Remove salt & pepper');



% Apply a mean filter
im11 = imfilter(im5, fspecial('average', [6, 6]));
subplot(3,5, 14), imshow(im11), title('Mean  - Remove speckle');


% Apply a mean filter
poisson_img= imfilter(poisson_img1, fspecial('average', [3, 3]));
subplot(3,5, 15), imshow(poisson_img), title('Mean  -  Remove poisson');




