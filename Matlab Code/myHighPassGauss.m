function filtOut = myHighPassGauss(sigma , M)

    filtOut = 1-myLowPassGauss(sigma , M);
    
    surf(filtOut)

end

