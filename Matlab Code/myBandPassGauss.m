function filtOut = myBandPassGauss(sigmaLow ,sigmaHigh , M)

filtOut = (1-myLowPassGauss(sigmaLow , M)).*(1-myHighPassGauss(sigmaHigh , M));

surf(filtOut)


end

