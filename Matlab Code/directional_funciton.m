function [ filtOut ] = directional_funciton( M,theta,phi )
       
    % This algorithm doesn't work for vertical lines (easy fix but it
    % doesn't really matter for this problem)
    
    filtOut=zeros(M,M);

    l1=tand(theta-phi/2);
    l2=tand(theta+phi/2);

    M2=round(M/2);
    
    for x=-M2-1:M2+1
        
        y1=round(l1*x);
        y2=round(l2*x);
        
        if y1<y2
            ymin=y1;
            ymax=y2;
        else
            ymin=y2;
            ymax=y1;
        end
        
        for yy=ymin:ymax
            if M2-yy>0 && M2+x>0 && M2-yy<M && M2+x<M
                filtOut(M2-yy,M2+x)=1;
            end 
        end
        
    end
    
    imshow(filtOut);

end

