function filtOut = myLowPassGauss(sigma , M)
%  sigma -> I diaspora tis sinartisis pou prosdiorizi tin sixnotita
%  apokopis
% M-> I diastasi tou filtrou 

    filtOut=zeros(M,M);
    
    for u1=1:M
        for u2=1:M
            
            D=sqrt((u1-M/2)^2+(u2-M/2)^2);
            
            D=-(D^2)/(2*sigma^2);
            
            filtOut(u1,u2)=exp(D);
            
            
        end
    end

     surf(filtOut);


end

