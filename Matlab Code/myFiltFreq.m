function [ imOut ] = myFiltFreq( imIn, someFilt )
% imIn -> ikona isodou (xorika)
% someFilt -> Perigrafi tou filtrou sto pedio tis Frequency

% imOut -> Ikona exodou me to apotelesma tis diadikasias filtrarismatos


%% Multiply f(n1,n2) with (-1)^(n1+n2) 
% In order to transform the matrix in the midle 

N=size(imIn,1);

for n1=1:N
    for n2=1:N
        
        imIn(n1,n2)=imIn(n1,n2)*( (-1)^(n1+n2) );
        
    end
end

%% Metasximatismo fourier tis ketrarismenis 

Fnew = fft2(imIn);
% 
% figure(4);
% surfc(abs(Fnew))

%% Ginomeno  fourier me filtro

% size(Fnew)
% size(someFilt)
G=Fnew.*someFilt;

%%  Use of ifft2 in order to take f(n1,n2)

g=ifft2(G);

%% Multiply f(n1,n2) with (-1)^(n1+n2) ó
% In order to transform the matrix in the midle 


for n1=1:N
    for n2=1:N
        
        g(n1,n2)=g(n1,n2)*( (-1)^(n1+n2) );
        
    end
end

imOut=g;

end













