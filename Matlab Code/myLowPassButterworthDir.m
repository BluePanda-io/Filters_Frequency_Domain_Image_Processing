function filtOut = myLowPassButterworthDir(cutOff , n, M, theta , phi)

        FillDirect= directional_funciton( M, theta , phi );
        
        filtOut2 = myLowPassButterworth(cutOff , n, M);
    
         filtOut = filtOut2.*FillDirect;
    
         surf(filtOut)


end

