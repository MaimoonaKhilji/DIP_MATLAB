I = imread('C:\Users\student\Desktop\painting.jpg');
figure;
I  = rgb2gray(I);
imshow(I);
title('Original Image');


% 
% 
% %Find edges using the Canny method.
% BW1 = edge(I,'Canny');
% figure;
% imshow(BW1);
% title('Canny Image');
% 



%Find edges using the Prewitt method.
% figure;
% BW2 = edge(I,'Prewitt');
% 
% imshow(BW2);
% title('Prewitt');
% 


figure;
%Sobel : Finds edges at those points where the gradient of the image I is maximum, using the Sobel approximation to the derivative.
BW3  = edge(I,'Sobel');
imshow(BW3);
title('Sobel');


figure;
imshow(not(BW3));
title('not');


% figure;
% %Roberts
% BW4 = edge(I,'Roberts');
% imshow(BW4);
% title('Roberts');
% 
% figure;
% %log
% BW5 = edge(I,'log');
% imshow(BW5);
% title('log');
% 
% 
% figure;
% %zerocross
% BW6 = edge(I,'zerocross');
% imshow(BW6);
% title('zerocross');
% 
% 
% 
% 
% 
% 
% %Display both results side-by-side.
% %imshowpair(BW1,BW2,'montage')