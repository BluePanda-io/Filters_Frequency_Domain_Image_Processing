function filtOut = myHighPassButterworthDir(cutOff , n, M, theta , phi)

FillDirect= directional_funciton( M, theta , phi );

     filtOut2 = myHighPassButterworth(cutOff , n, M);
     filtOut = filtOut2.*FillDirect;
    
     surf(filtOut)

end

