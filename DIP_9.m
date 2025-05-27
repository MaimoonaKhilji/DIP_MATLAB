% Agenda
% Exclusive OR

%image  =>grayscale => binary => logical operator
% xor= ~x&y | x&~y
% xor(img1,img2) 




A = imread('Z:\\Digital image Processing\\Test Images ALL\\Fig0533(a)(circle).tif');


B = imread('Z:\\Digital image Processing\\Test Images ALL\\Fig0236(a)(letter_T).tif');
B = imresize(B,[600 600]);

subplot(3,2,1),imshow(A),title('A - Image');

subplot(3,2,2),imshow(B),title('b - Image');

subplot(3,2,3),imshow(~A),title('Complement of A');

subplot(3,2,4),imshow(xor(A,B)),title('A Xor B');


subplot(3,2,5),imshow(A|B),title('A or B');


subplot(3,2,6),imshow(A&B),title('A & B');
