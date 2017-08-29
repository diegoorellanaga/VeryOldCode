function [ TT ] = CreadorVectoresEntrenamiento2( A,T )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here





a=size(A,1);    %tamano de la matriz que representa la imagen 
At=permute(A,[3,2,1,4]);  %rotamos la matriz cosa que sus columnas sean los pixeles es decir columnas de 3 dimensiones cuyos elementos son R G y B


for i=1:a
  
        T=cat(2,T,At(:,:,i));  %concateno estas columnas pixeles con las T esto se hace para crear recursvidad
        
end

TT=T;   %entrego resultado
% RT(1,:)=R;
% RT(2:end,:)=T;



end