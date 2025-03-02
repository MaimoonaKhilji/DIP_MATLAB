f=imread('C:\Users\student\Desktop\a.tif');
subplot(2,4,1);
imshow(f);
title('1st image');


f2=imread('C:\Users\student\Desktop\b.tif');
subplot(2,4,2);
imshow(f2);
title('2nd image');



subplot(2,4,3);
imshow(not(f));
title('NOT 1st image');


subplot(2,4,4);
imshow(not(f2));
title('NOT 2nd image');



f2 = imresize(f2,[1024 1024]);
subplot(2,4,5);
imshow(f&f2);
title('AND image');

subplot(2,4,6);
imshow(f|f2);
title('OR image');

