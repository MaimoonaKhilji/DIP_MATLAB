
f = imread('Z:\\Digital image Processing\\Test Images ALL\\Fig1060(b)(car on right).tif');

figure;
subplot(2,3,1),imshow(f),title('original Image');

eq_I = histeq(f);
subplot(2,3,2),imshow(eq_I),title('Equalized Image');


local_eq = adapthisteq(f);
subplot(2,3,3),imshow(local_eq),title('Local Equalized Image');



sharpen = imsharpen(f);
subplot(2,3,4),imshow(sharpen),title('sharpen Image');


adjust = imadjust(f);
subplot(2,3,5),imshow(adjust),title('adjust Image');



sharpen = imsharpen(local_eq);
subplot(2,3,6),imshow(sharpen),title('sharpen local_eq Image');



