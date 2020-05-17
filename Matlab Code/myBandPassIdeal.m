function filtOut = myBandPassIdeal(cutOffLow ,cutOffHigh , M)


    filtOut=(1-myLowPassIdeal(cutOffLow , M) ).*(1-myHighPassIdeal(cutOffHigh , M) );

    surf(filtOut)
    
end

