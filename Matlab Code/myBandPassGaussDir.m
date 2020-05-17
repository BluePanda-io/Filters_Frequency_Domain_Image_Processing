function filtOut = myBandPassGaussDir(sigmaLow ,sigmaHigh , M, theta , phi)


FillDirect= directional_funciton( M, theta , phi );

     filtOut2 = myBandPassGauss(sigmaLow ,sigmaHigh , M);
     filtOut = filtOut2.*FillDirect;
    
     surf(filtOut)

end

