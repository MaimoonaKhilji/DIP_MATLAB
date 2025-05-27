% Agenda
% Dilation and Erosion

A = imread('Z:\\Digital image Processing\\Test Images ALL\\Fig0236(a)(letter_T).tif');

% Convert to binary if it's grayscale
if ~islogical(A)
    A = imbinarize(A);
end


% Original Image
subplot(3,3,1),imshow(A),title('A - Image');

% Dilated Image
dilate_img = imdilate(A,strel('disk',5));
subplot(3,3,2),imshow(dilate_img),title('Dilated Image');

% Eroded Image
erode_img = imerode(A,strel('disk',4));
subplot(3,3,3),imshow(erode_img),title('Eroded Image');

% Internal Boundry
subplot(3,3,4),imshow(A - erode_img),title('internal boundry');

% External Boundry
subplot(3,3,5),imshow(dilate_img - A),title('External boundry');

% Morphological gradient
morph= dilate_img-erode_img;
subplot(3,3,6),imshow(morph),title('Morphological gradient');

% Thinned Image
thin = bwmorph(A, 'thin', Inf);
subplot(3,3,7), imshow(thin), title('Thinned Image');

% Thickened Image
thick = bwmorph(A, 'thicken', Inf);
subplot(3,3,8), imshow(thick), title('Thickened Image');

% skeletonize
skeletonized = bwmorph(A,'skel',Inf);
subplot(3,3,9),imshow(skeletonize),title('skeletonize');


