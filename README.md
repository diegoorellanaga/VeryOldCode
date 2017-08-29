Title:    Some old scripts  
Author:    Diego Orellana  
Base Header Level:    2  

# Introduction #

These are some old scripts I made a few years ago. One was written in C++ using the OpenCV library, the others were written in Matlab and they are; the splitscan effect, an implementation of a neural network to detect skin in images, and a simple convolution function.

## SlitScan Effect ##

This script was written in C++ and is the implementation of an effect on video. You can see the results in the following link:
[Video] 

The code of this function is very short, and I think is self-explanatory.


## Skin detector ##

This script is divided into parts, each part plays a specific role:

* CreadorVectoresEntrenamiento2: Creates the training information from the training images.
* CreadorVectoresTarget2: Creates the target information from special images.
* ObtenerMatrizParaEntrenar: Using the previous functions we create a matrix with which the neural network is going to be trained.
* Tarea_3_VA: With this function, we train the neural network.
* CrearImagenDetectandoPiel2: With this function, we detect the skin in an image given a trained neural network.
* Tarea3VA_D_O: This is the function that we actually execute, it has the complete process encapsulated.

All the parameters of the Skin detector functions are described inside the code of each function.

## Convolution ##

This script implements a filter to a given image. The parameters for this function are the following
 
* An image
* A filter

If you want to know any more details feel free to leave me a message.


http://github.com - automatic!
[GitHub](http://github.com)


![GitHub Logo](/home/diego/Desktop/VeryOldCode/beach_6-m.png)
Format: ![Alt Text](/home/diego/Desktop/VeryOldCode/beach_6-m.png)

![GitHub Logo](/home/diego/Desktop/VeryOldCode/beach_6-m.png)
Format: ![Alt Text](https://github.com/diegoorellanaga/VeryOldCode/blob/master/beach_6-m.png)

![GitHub Logo](https://github.com/diegoorellanaga/VeryOldCode/blob/master/beach_6-m.png)
Format: ![Alt Text](https://github.com/diegoorellanaga/VeryOldCode/blob/master/beach_6-m.png)

![Alt Text](https://github.com/diegoorellanaga/VeryOldCode/blob/master/beach_6-m.png)

![Alt Text](https://github.com/diegoorellanaga/VeryOldCode/blob/master/beach_6.png)

[Video]:	https://www.youtube.com/watch?v=NX2e5vXbOPA

