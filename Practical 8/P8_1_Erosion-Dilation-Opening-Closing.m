I=imread('C:\Program Files\scilab-6.1.1\IPCV\images\circbw.tif');
subplot(2,3,1),
imshow(I);
title('Original image');

%Dilated Image
se = strel('line',7,7);
dilate=imdilate(I,se);
subplot(2,3,2),
imshow(dilate);
title('Dilated image');

%Eroded image

erode=imerode(I,se);
subplot(2,3,3),
imshow(erode);
title('Eroded image');

% opened image
open=imopen(I,se);
subplot(2,3,4),
imshow(open);
title('Opened image');

% closed image
close=imclose(I,se);
subplot(2,3,5),
imshow(close);
title('Closed image');