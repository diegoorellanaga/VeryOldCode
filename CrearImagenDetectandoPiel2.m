function [ Aout ] = CrearImagenDetectandoPiel2( A,net,U )
%Esta funcion lo que hace es recibir la matriz que representa la foto a
%color, la transforma para darla a la red neuronal de manera decuada y
%luego la red neuronal nos dice si es piel o es no piel segun cuan cerca
%este el resultado de 255.


a=size(A,1); %Tamano de la matriz que representa la imagen



At=double(permute(A,[3,2,1,4])); %Roto la matriz cosa de que los pixeles sean columnas de la matriz

Af=zeros(size(At)); %creo la matriz de salida
for i=1:a

Af(:,:,i)=repmat((255*(U<sim(net,At(:,:,i)))),3,1);  %Introdusco la informacion  en la red neuronal y el valor de salida lo comparo con el umbral por el cual se decide si es piel o no el pixel que entro en la red 

end

Aout=uint8(permute(Af,[3,2,1,4])); %Roto la matriz nuevamente para que quede de la manera original y haci poder guardarla o mostrarla como imagen.

end

