function filtOut = myLowPassGaussDir(sigma , M, theta , phi)

    FillDirect= directional_funciton( M, theta , phi );

     filtOut2 = myLowPassGauss(sigma , M);
     filtOut = filtOut2.*FillDirect;
    
     surf(filtOut)
end

