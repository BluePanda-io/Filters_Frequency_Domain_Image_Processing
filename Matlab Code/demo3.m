load('dip_hw_2.mat');

M=500;
filtOut=zeros(M,M);

for i=0:5
    th=i*60;
    temp = myLowPassIdealDir(200 , M, th , 30);
    
%     filtOut=filtOut+temp;
    for ki=1:M
        for j=1:M
            if filtOut(ki,j)==0
                filtOut(ki,j)=temp(ki,j);
            end
        end
    end
end

surf(filtOut)

imOut = myFiltFreq(demo2Im1, filtOut);
figure(1);imshow(demo2Im1);
figure(2);imshow(imOut);


%---------------------------------------------------------------------------------------------


filtOut=zeros(M,M);

for i=0:5
    th=i*60;
    temp = myLowPassButterworthDir(200 ,5, M, th , 30);
    
%     filtOut=filtOut+temp;
    for ki=1:M
        for j=1:M
            if filtOut(ki,j)==0
                filtOut(ki,j)=temp(ki,j);
            end
        end
    end
end

surf(filtOut)

imOut = myFiltFreq(demo2Im1, filtOut);
figure(1);imshow(demo2Im1);
figure(2);imshow(imOut);

%---------------------------------------------------------------------------------------------


filtOut=zeros(M,M);

for i=0:5
    th=i*60;
    temp = myLowPassGaussDir(150, M, th , 30);
    
%     filtOut=filtOut+temp;
    for ki=1:M
        for j=1:M
            if filtOut(ki,j)==0
                filtOut(ki,j)=temp(ki,j);
            end
        end
    end
end

surf(filtOut)

imOut = myFiltFreq(demo2Im2, filtOut);
figure(1);imshow(demo2Im2);
figure(2);imshow(imOut);

%---------------------------------------------------------------------------------------------


filtOut=zeros(M,M);

for i=0:5
    th=i*60;
    temp = myHighPassIdealDir(150, M, th , 30);
    
%     filtOut=filtOut+temp;
    for ki=1:M
        for j=1:M
            if filtOut(ki,j)==0
                filtOut(ki,j)=temp(ki,j);
            end
        end
    end
end

surf(filtOut)

imOut = myFiltFreq(demo2Im1, filtOut);
figure(1);imshow(demo2Im1);
figure(2);imshow(imOut);



