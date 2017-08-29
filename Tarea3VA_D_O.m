function [ Por ] = Tarea3VA_D_O(NombreIm,NombreImBN,formato,RedNeuronal,umbral)
%Esta es la funcion que el usuario ejecuta
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%NombreIm=Nombre de la imagen a color
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%NombreImBN= nombre de la imagen en blanco y negro optima respectiva a la
%imagen de color, esto es solo para cuando se quiere saber los porcentajes
%de errores, si no se tiene la imagen optima con la cual comparar se
%entrega la misma NombreIm
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%formato=formato de la imagen
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%RedNeuoronal= Nombre de la red neuronal a usar esta tiene que ya estar
%entrenada, ya que esta funcion no la entrena solo la usa.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Umbral= va entre 0 y 255 si esta cercano a 255 el filtro se pone mas
%estricto haciendo que los falsos negativos aumenten por el otro lado
%cercano a 0 los falsos positivos disminuyen.

A=imread(NombreIm,formato);   %Leo la imagen a color

gg=CrearImagenDetectandoPiel2(A,RedNeuronal,umbral);  %Creo la imagen detectando la piel


imshow(A); %Muestro la imagen original.
figure
imshow(gg); %Muestro la imagen procesada, que detecta piel.



ImOriginal= imread(NombreImBN); % Leo imagen en blanco y negro optima

Por=CalculoDePorcentajes(ImOriginal,gg); %Ejecuto esta funcion con la cual calculo porcentajes de error y de efectividad al comparar la imagen optima y la imagen resultante de procesarla con este programa






end

