load('dip_hw_2.mat');


figure(1);imshow(demo1Im);

imOut = myFiltFreq(demo1Im, someFreqFilt);

figure(2);imshow(imOut);