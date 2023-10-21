picture = imread('image2.jpeg');

seo = strel('disk',2);
openimage = imopen(picture,seo);

sec = strel('disk',1);
closeimage = imclose(picture,sec);


subplot(131),image(picture);
title('原图');
subplot(132),image(openimage);
title('开运算（先腐蚀后膨胀）');
subplot(133),image(closeimage);
title('闭运算（先膨胀后腐蚀）');