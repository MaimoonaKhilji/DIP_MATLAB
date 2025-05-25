
A = imread('Z:\\Digital image Processing\\Test Images ALL\\Fig0236(a)(letter_T).tif');


subplot(3,3,1),imshow(A),title('A - Image');

dilate_img = imdilate(A,strel('disk',5));
subplot(3,3,2),imshow(dilate_img),title('Dilated Image');

erode_img = imerode(A,strel('disk',4));
subplot(3,3,3),imshow(erode_img),title('Eroded Image');


subplot(3,3,4),imshow(A - erode_img),title('internal boundry');


subplot(3,3,5),imshow(dilate_img - A),title('External boundry');
morph= dilate_img-erode_img;
subplot(3,3,6),imshow(morph),title('Morphological gradient');

thin=morph + erode_img ;
subplot(3,3,7),imshow(thin),title('thin');

thick=morph + thin ;
subplot(3,3,8),imshow(thick),title('thickness');

skeletonize=bwmorph(A,'skel',Inf);
subplot(3,3,9),imshow(skeletonize),title('skeletonize');


