//Playing Video
//#include <iostream>
#include "cv.h" 
#include "opencv2\core\core.hpp"
#include "opencv2\highgui\highgui.hpp"
#include <list>
#include "highgui.h" 
#include <opencv2/highgui/highgui.hpp> 
using namespace cv;
using namespace std;
int main() 
{ 
	 std::string pathi;
 std::string patho;
   cout << "Escribe la ruta al archivo de video a modificar: ";
   std::getline(cin, pathi);
   cout << "Escribe la ruta donde ubicaras el video modificiado: ";
   std::getline(cin, patho);
 int k;
   cout << "Escribe la resolucion del paso: ";
   cin>> k;

	list<Mat> lista(1);	//Crea una lista
//Abre un archivo de video
VideoCapture capture(pathi); //Path del archivo
// check if video successfully opened
if (!capture.isOpened())
return 1;
// Get the frame rate
bool stop(false);
Mat frame;// current video frame
namedWindow("Extracted Frame");
//Creo el elemento para guardar el nuevo video y escribo sus propiedades
VideoWriter output_cap(patho, 
               capture.get(CV_CAP_PROP_FOURCC),
               capture.get(CV_CAP_PROP_FPS),
               Size(capture.get(CV_CAP_PROP_FRAME_WIDTH),
               capture.get(CV_CAP_PROP_FRAME_HEIGHT)));

if (!output_cap.isOpened())
{
           return 1;
}

while (!stop) {
// Lee el siguiente frame, si no quedan se sale del loop
if (!capture.read(frame))
break;
int j = 0;
Mat frame33 = Mat::zeros( frame.size(), frame.type() );
Mat frame22 = Mat::zeros( frame.size(), frame.type() );
list<Mat>::iterator iter=  lista.begin();  
advance(iter,j);
frame.copyTo(frame33); 
lista.insert(iter,frame33);
//int k = 5; //controlo cuantos frames quiero saltar
if(lista.size()>frame.rows/k+1){
	lista.pop_back();
}

for(int i=0;(i<lista.size()-1) && (i<frame.rows-4) ;i++){

list<Mat>::iterator iter=  lista.begin(); 
advance(iter,i);	

for(int l=0;l<k;l++){
Mat M1 = frame22.row(k*i+l);
(*iter).row(k*i+l).copyTo(M1);
}

}

imshow("Extracted Frame",frame22);

output_cap.write(frame22);
// introduce a delay in mili-second
waitKey(50);
}
// cierra el video de salida y de entrada
capture.release();
output_cap.release();
return 0; 
}