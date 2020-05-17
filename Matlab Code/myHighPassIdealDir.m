function filtOut = myHighPassIdealDir(cutOff , M, theta , phi)

    FillDirect= directional_funciton( M, theta , phi );

     filtOut2 = myHighPassIdeal(cutOff , M);
     filtOut = filtOut2.*FillDirect;
    
     surf(filtOut)
end

