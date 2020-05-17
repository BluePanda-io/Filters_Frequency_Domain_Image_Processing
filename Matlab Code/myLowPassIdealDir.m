function filtOut = myLowPassIdealDir(cutOff , M, theta , phi)

    FillDirect= directional_funciton( M, theta , phi );
    
     filtOut2 = myLowPassIdeal(cutOff , M);
     
    filtOut = filtOut2.*FillDirect;
    
    surf(filtOut)

end

