load('dip_hw_2.mat');

count=3;
figure(count);imshow(demo2Im1);
count=count+1;
imOut = myFiltFreq(demo2Im1, myLowPassIdeal(200 , 500));

figure(count);imshow(imOut);
count=count+1;

figure(count);imshow(demo2Im2);
count=count+1;
imOut = myFiltFreq(demo2Im2, myLowPassIdeal(200 , 500));

figure(count);imshow(imOut);
count=count+1;


figure(count);imshow(demo2Im1);
count=count+1;
imOut = myFiltFreq(demo2Im1, myLowPassButterworth(200 ,5, 500));

figure(count);imshow(imOut);
count=count+1;

figure(count);imshow(demo2Im2);
count=count+1;
imOut = myFiltFreq(demo2Im2, myLowPassButterworth(200 ,5, 500));

figure(count);imshow(imOut);
count=count+1;



figure(count);imshow(demo2Im1);
count=count+1;
imOut = myFiltFreq(demo2Im1, myLowPassGauss(150 , 500));

figure(count);imshow(imOut);
count=count+1;

figure(count);imshow(demo2Im2);
count=count+1;
imOut = myFiltFreq(demo2Im2, myLowPassGauss(150 , 500));

figure(count);imshow(imOut);
count=count+1;




%-------------------------------------------------------------------------------------




count=3;
figure(count);imshow(demo2Im1);
count=count+1;
imOut = myFiltFreq(demo2Im1, myHighPassIdeal(150 , 500));

figure(count);imshow(imOut);
count=count+1;

figure(count);imshow(demo2Im2);
count=count+1;
imOut = myFiltFreq(demo2Im2, myHighPassIdeal(150 , 500));

figure(count);imshow(imOut);
count=count+1;


figure(count);imshow(demo2Im1);
count=count+1;
imOut = myFiltFreq(demo2Im1, myHighPassButterworth(150 ,5, 500));

figure(count);imshow(imOut);
count=count+1;

figure(count);imshow(demo2Im2);
count=count+1;
imOut = myFiltFreq(demo2Im2, myHighPassButterworth(150 ,5, 500));

figure(count);imshow(imOut);
count=count+1;



figure(count);imshow(demo2Im1);
count=count+1;
imOut = myFiltFreq(demo2Im1, myHighPassGauss(150 , 500));

figure(count);imshow(imOut);
count=count+1;

figure(count);imshow(demo2Im2);
count=count+1;
imOut = myFiltFreq(demo2Im2, myHighPassGauss(150 , 500));

figure(count);imshow(imOut);
count=count+1;


%-------------------------------------------------------------------------------------




count=3;
figure(count);imshow(demo2Im1);
count=count+1;
imOut = myFiltFreq(demo2Im1, myBandPassIdeal(200,400, 500));

figure(count);imshow(imOut);
count=count+1;

figure(count);imshow(demo2Im2);
count=count+1;
imOut = myFiltFreq(demo2Im2, myBandPassIdeal(200,400, 500));

figure(count);imshow(imOut);
count=count+1;


figure(count);imshow(demo2Im1);
count=count+1;
imOut = myFiltFreq(demo2Im1, myBandPassButterworth(200,400 ,5, 500));

figure(count);imshow(imOut);
count=count+1;

figure(count);imshow(demo2Im2);
count=count+1;
imOut = myFiltFreq(demo2Im2, myBandPassButterworth(200,400 ,5, 500));

figure(count);imshow(imOut);
count=count+1;



figure(count);imshow(demo2Im1);
count=count+1;
imOut = myFiltFreq(demo2Im1, myBandPassGauss(150,300, 500));

figure(count);imshow(imOut);
count=count+1;

figure(count);imshow(demo2Im2);
count=count+1;
imOut = myFiltFreq(demo2Im2, myBandPassGauss(150,300, 500));

figure(count);imshow(imOut);
count=count+1;


