/*
 *		Archivo: MatrixMultiplication1.c
 *      Universidad Sergio Arboleda
 *      Escuela de ingenieria y ciencias exactas
 *      Programas: Ingeniería en ciencias de la computación e inteligencia artificial
 
 *		Autor: Carlos Antonio Plaza Amado <carlos.plaza01@correo.usa.edu.co>
 *			   Juan Jose Trujillo Rodriguez <juan.trujillo01@correo.usa.edu.co>
 *      Ultima modificación: Septiembre 07, 2021
 *      Sesión: Multiplicación de matrices clásica
 *-----------------------------------------------------------------------------------------------
 *
 *	RESUMEN:
 *	=======
 *	Este programa realiza la multiplicación entre dos matrices de mismas dimensiones. El programa
 *	pide como parametro de ejecución el tamaño para las matrices.
 *  Luego el programa se encargara por su cuenta de generar dos matrices con numeros semi-aleatorios y 
 *  una tercera de las mismas dimensiones en la cual almacenar el resultado de la multiplicación entre 
 *  estas ultimas.
 *	Finalmente, devolvera el tiempo de ejecución para que el usuario conozca la duración para el
 *  proceso anterior. Todo esto haciendo uso del formato de programación modular (interfaz, modulo y 
 *  aplicación).
 *
 *	NOTA: Al seguir la estructura de programación modular, la definición de las funciones la
 *	encontrara en el archivo functions1.c y el funcionamiento de las mismas en functions1.h. Asi mismo, se
 *  usan dos principales quienes pueden utilizar dichas funciones.
 */

#include <stdio.h>
#include <stdlib.h>
#include "functions1.h"

int main(int argc, char ** argv)
{
	int N;

	N = (int) atof(argv[1]);


	int matrizA[N][N];
	int matrizB[N][N];
	int matrizC[N][N];

	matrizInit(N, matrizA);
	matrizInit(N, matrizB);

	//printf("Impresion Matriz A \n");
	//imprimirMatrices(N, matrizA);

	//printf("Impresion Matriz B \n");
	//imprimirMatrices(N, matrizB);


	sampleStart();
	//printf("Multiplicacion Matriz A y Matriz B \n");
	multiplicacionMatrices(N, matrizA, matrizB, matrizC);
	//imprimirMatrices(N, matrizC);

	sampleStop();
	printTime();


	return 0;


}
