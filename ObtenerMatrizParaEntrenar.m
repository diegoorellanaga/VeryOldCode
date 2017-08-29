function [ RT ] = ObtenerMatrizParaEntrenar()
%Esta funcion solo se usa para el entrenamiento
%

inputA0= input('ingresa nombre foto colores >'); %pido al usuario nombre de foto a color y en blanco y negro.
inputB0= input('ingresa nombre foto blanco y negro >');


A=imread(inputA0,'jpg');    %leo las respectivas imagenes y las guardo.
B=imread(inputB0,'jpg');
RR=CreadorVectoresTarget2(B,0);                  %obtengo la informacion de forma manipulable de las respectivas matrices.
TT=CreadorVectoresEntrenamiento2(A,[0;0;0]);     %usando las funciones respectivas.

seguir=input('Presiona (1) para ingresar mas fotos. (0) para Terminar >');   %preguntp al usuario si quiere seguir metiendo fotos.


while(seguir) %hace lo mismo qu een la parte de arriba pero hasta que el usuario decida parar.
    
    
nombreA= input('ingresa nombre foto colores >');
nombreB= input('ingresa nombre foto blanco y negro >');
 
A=imread(nombreA,'jpg');
B=imread(nombreB,'jpg');
    
    
   RR= CreadorVectoresTarget2(B,RR);
   TT= CreadorVectoresEntrenamiento2(A,TT);
   
 seguir=input('Presiona (1) para ingresar mas fotos. (0) para Terminar >');   
    
    
    
    
end

RT(1,:)=RR;  %entrego la informacion obtenida de las fotos en una gran matriz donde su primera fila sera la informacion objetivo y las demas 3 filas seran las columnas de los pixeles
RT(2:4,:)=TT;


end

