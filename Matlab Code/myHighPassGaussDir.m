function filtOut = myHighPassGaussDir(sigma , M, theta , phi)

FillDirect= directional_funciton( M, theta , phi );

     filtOut2 = myHighPassGauss(sigma , M);
     filtOut = filtOut2.*FillDirect;
    
     surf(filtOut)

end

