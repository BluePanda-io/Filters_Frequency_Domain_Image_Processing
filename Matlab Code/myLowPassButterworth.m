function filtOut = myLowPassButterworth(cutOff , n, M)
%  cutOff -> I sixnotita apokopis 
% n -> I taxi tou filtrou 
% M-> I diastasi tou filtrou 
% filtOut -> I perigrafi tou idanikou vathiperatou filtrou sto pedio tis sixnotitas
    
    filtOut=zeros(M,M);
    
    for u1=1:M
        for u2=1:M
            
            D=sqrt((u1-M/2)^2+(u2-M/2)^2);
            
            D=D/cutOff;
            
            filtOut(u1,u2)=1/( 1+D^(2*n) );
            
            
        end
    end

     surf(filtOut)

end

