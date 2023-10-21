npicture = imread("image2.jpeg");

midpicture = medfilt3(npicture);

for i=0:20
    midpicture = medfilt3(midpicture);
end

H=fspecial('average',20);
avgpicture = imfilter(npicture,H);


subplot(231),image(npicture);
title('初始图');
subplot(232),image(midpicture);
title('中值滤波');
subplot(233),image(avgpicture);
title('均值滤波');


%锐化
%拉普拉斯锐化
w = fspecial('laplacian',0);
temppictrue = imfilter(midpicture,w,'replicate');
lpicture = npicture - temppictrue;
subplot(235),image(lpicture);
title('中值锐化');

w = fspecial('laplacian',0);
temppictrue = imfilter(avgpicture,w,'replicate');
lpicture = npicture - temppictrue;
subplot(236),image(lpicture);
title('均值锐化');