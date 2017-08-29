function [ RR ] = CreadorVectoresTarget2( B,R )
%Solo se usa para entrenar la red neuronal
%  Es exactamente igual que la funcion CreadorVectoresEntrenamiento2 solo
%  que en ves de concatenar columnas se concatenan vectores.

a=size(B,1);
Rt= permute(B,[3,2,1,4]);

for i=1:a
    
         R=cat(2,R,Rt(1,:,i));
    
end

RR=R;




end