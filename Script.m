clc
clear all
warning off 
img=imread('mypic.jpg');
imshow(img)

bg=imread('bgimg.jpg');
figure;
imshow(bg);

[r c b]=size(img);
resizedImg=imresize(bg,[r c]);

mask=createMask(img);
figure;
imshow(mask);

FinalImg=resizedImg.*uint8(~mask);
resizedImg=bg;
figure;
imshow(FinalImg);

subplot(1,2,1);
imshow(img)
subplot(1,2,2);

imshow(FinalImg+img.*uint8(mask));
resizedImg=bg;