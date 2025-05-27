% Agenda
% Edge Detection

I = imread('C:\\Users\\student\\Desktop\\skull.tif');

%I  = rgb2gray(I);

subplot(2,3, 1);
imshow(I);
title('Original Image');




%Find edges using the Canny method.
BW1 = edge(I,'Canny');

subplot(2,3, 2);
imshow(BW1);
title('Canny Image');




%Find edges using the Prewitt method.

BW2 = edge(I,'Prewitt');

subplot(2,3, 3);
imshow(BW2);
title('Prewitt');

%Sobel : Finds edges at those points where the gradient of the image I is maximum, using the Sobel approximation to the derivative.
BW3  = edge(I,'Sobel');

subplot(2,3, 4);
imshow(BW3);
title('Sobel');


%Roberts
BW4 = edge(I,'Roberts');

subplot(2,3, 5);
imshow(BW4);
title('Roberts');


%log
BW5 = edge(I,'log');

subplot(2,3, 6);
imshow(BW5);
title('log');

%zerocross
BW6 = edge(I,'zerocross');

%subplot(2,3, 6);
%imshow(BW6);
%title('zerocross');






%Display both results side-by-side.
%imshowpair(BW1,BW2,'montage')
