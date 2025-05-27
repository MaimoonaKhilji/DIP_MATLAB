% Agenda
% Read an Image
% Use arithmetic operators to change the values in the image


% Read an image
f=imread('C:\Users\student\Desktop\emoji.jpg');
subplot(2,3,1);
imshow(f);
title('original image');

subplot(2,3,2);
imshow(f*5);
title('multiplication image');

subplot(2,3,3);
imshow(f-5);
title('subtraction image');

subplot(2,3,4);
imshow(f+5);
title('addition image');

subplot(2,3,5);
imshow(f/5);
title('Division image');
