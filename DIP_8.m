% Agenda
% histogram Equalizer

f = imread('Z:\\Digital image Processing\\Test Images ALL\\Fig0107(c)(headCT-Vandy).tif');
figure;
subplot(1,2,1),imshow(f),title('Original Image');
subplot(1,2,2),imhist(f),title('histogram');

eq_I =histeq(f);
figure;
subplot(1,2,1),imshow(eq_I),title('Equalized Image');
subplot(1,2,2),imhist(eq_I),title('histogram');



local_eq = adapthisteq(f,'ClipLimit',0.1);
figure;
subplot(1,2,1),imshow(local_eq),title('Local Equalized Image');
subplot(1,2,2),imhist(local_eq),title('histogram');




% kidney image

f = imread('Z:\\Digital image Processing\\Test Images ALL\\Fig0312(a)(kidney).tif');
figure;  
subplot(1,2,1),imshow(f),title('Original Image');
subplot(1,2,2),imhist(f),title('histogram');

eq_I =histeq(f);
figure;
subplot(1,2,1),imshow(eq_I),title('Equalized Image');
subplot(1,2,2),imhist(eq_I),title('histogram');



local_eq = adapthisteq(f,'ClipLimit',0.1);
figure;
subplot(1,2,1),imshow(local_eq),title('Local Equalized Image');
subplot(1,2,2),imhist(local_eq),title('histogram');



local_eq = adapthisteq(f,'NumTiles',[4,4],'clipLimit',0.09);
figure;
subplot(1,2,1),imshow(local_eq),title('Local Equalized Image');
subplot(1,2,2),imhist(local_eq),title('histogram');





