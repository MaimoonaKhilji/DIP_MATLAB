% Agenda
% Read an Image
% Apply Logical Operators on image

% Read first image
f=imread('C:\Users\student\Desktop\a.tif');
subplot(2,4,1);
imshow(f);
title('1st image');

% Read second image
f2=imread('C:\Users\student\Desktop\b.tif');
subplot(2,4,2);
imshow(f2);
title('2nd image');


% Apply NOT on first image
subplot(2,4,3);
imshow(not(f));
title('NOT 1st image');


% Apply NOT on second image
subplot(2,4,4);
imshow(not(f2));
title('NOT 2nd image');


% Resize image
f2 = imresize(f2,[1024 1024]);

% AND Operator
subplot(2,4,5);
imshow(f&f2);
title('AND image');





% Apply Logical Operators on different images

% Read first image
f=imread('C:\Users\student\Desktop\c.tif');
subplot(2,4,1);
imshow(f);
title('1st image');

% Read second image
f2=imread('C:\Users\student\Desktop\d.tif');
subplot(2,4,2);
imshow(f2);
title('2nd image');


% NOT
subplot(2,4,3);
imshow(not(f));
title('NOT 1st image');

% NOT
subplot(2,4,4);
imshow(not(f2));
title('NOT 2nd image');



% AND
subplot(2,4,5);
imshow(f&f2);
title('AND image');

% OR
subplot(2,4,6);
imshow(f|f2);
title('OR image');

% OR Operator
subplot(2,4,6);
imshow(f|f2);
title('OR image');

