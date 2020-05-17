function filtOut = myLowPassIdeal(cutOff , M)
%  cutOff -> I sixnotita apokopis 
% M -> I diastasi tou tetragonou fitrou
% filtOut -> I perigrafi tou idanikou vathiperatou filtrou sto pedio tis sixnotitas
    
    filtOut=zeros(M,M);
    
    for u1=1:M
        for u2=1:M
            
            D=sqrt((u1-M/2)^2+(u2-M/2)^2);
            
            if (D<=cutOff)
                filtOut(u1,u2)=1;
            else
                filtOut(u1,u2)=0;
            end
            
        end
    end

     surf(filtOut)

end

