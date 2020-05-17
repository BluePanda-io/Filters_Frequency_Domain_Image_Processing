function filtOut = myHighPassIdeal(cutOff , M)
%  cutOff -> I sixnotita apokopis 
% M -> I diastasi tou tetragonou fitrou
% filtOut -> I perigrafi tou idanikou vathiperatou filtrou sto pedio tis sixnotitas
  
    filtOut = 1-myLowPassIdeal(cutOff , M);
    
    surf(filtOut)

end

