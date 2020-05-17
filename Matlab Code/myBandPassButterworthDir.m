function filtOut = myBandPassButterworthDir(cutOffLow , cutOffHigh , n, M,
theta , phi)

FillDirect= directional_funciton( M, theta , phi );

     filtOut2 =  myBandPassButterworth(cutOffLow , cutOffHigh , n, M);
     filtOut = filtOut2.*FillDirect;
    
     surf(filtOut)


end

