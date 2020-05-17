function filtOut = myBandPassIdealDir(cutOffLow ,cutOffHigh , M, theta , phi)

FillDirect= directional_funciton( M, theta , phi );

     filtOut2 = myBandPassIdeal(cutOffLow ,cutOffHigh , M);
     filtOut = filtOut2.*FillDirect;
    
     surf(filtOut)

end

