%% Initialization

N=100;
F=zeros(N,N);



m=45; % Vector of the sinus
l=45;

%% Create  the DFT of F

for u1=1:N
    for u2=1:N
        if (u1==m && u2==l)
            F(u1,u2)=1;
        elseif (u1==N-m && u2==N-l)
            F(u1,u2)=1;
        else
            F(u1,u2)=0;    
        end
        
    end
end

figure(1);
surfc(F)

%%  Use of ifft2 in order to take f(n1,n2)

f=ifft2(F);

figure(2);
surfc(abs(f))

%% Multiply f(n1,n2) with (-1)^(n1+n2) 
% In order to transform the matrix in the midle 


for n1=1:N
    for n2=1:N
        
        f(n1,n2)=f(n1,n2)*( (-1)^(n1+n2) );
        
    end
end


figure(3);
surfc(abs(f))


%% Metasximatismo fourier tis ketrarismenis 

Fnew = fft2(f);

figure(4);
surfc(abs(Fnew))













