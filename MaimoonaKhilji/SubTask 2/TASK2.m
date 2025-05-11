
% Read original image
f = imread('E:\MaimoonaKhilji\SubTask 2\Fig0335(a)(ckt_board_saltpep_prob_pt05) - Copy.tif');
subplot(2,4,1),imshow(f),title('original image');

% Apply filter with default settings
filter = medfilt2(f)
subplot(2,4,2),imshow(filter),title('filter image');


% Apply filter with filter size 3 x 3
filter = medfilt2(f, [3 3 ])
subplot(2,4,3),imshow(filter),title('filter 3 x 3 image');

% Apply filter with filter size 5 x 5
filter = medfilt2(f, [5 5 ])
subplot(2,4,4),imshow(filter),title('filter 5 x 5 image');

% Apply filter with filter size 6 x 6
filter = medfilt2(f, [6 6 ])
subplot(2,4,5),imshow(filter),title('filter 6 x 6 image');

% Apply filter with filter size 7 x 7
filter = medfilt2(f, [7 7 ])
subplot(2,4,6),imshow(filter),title('filter 7 x 7 image');

% Apply filter with filter size 8 x 8
filter = medfilt2(f, [8 8 ])
subplot(2,4,7),imshow(filter),title('filter 8 x 8 image');

% Apply filter with filter size 9 x 9
filter = medfilt2(f, [9 9 ])
subplot(2,4,8),imshow(filter),title('filter 9 x 9 image');
