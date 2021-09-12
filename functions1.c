#include "functions1.h"
#include <stdio.h>

void matrizInit(int N, int matriz[N][N]) {
	int i,j;
	for(i=0; i<N; i++){
	       for(j=0; j<N; j++){
		      matriz[i][j] = 2*(j-i);
		}
}
}


void multiplicacionMatrices(int N, int matrizA[N][N], int matrizB[N][N], int matrizC[N][N]){

	int i=0;
        int j=0;
	int k=0;

	for(i=0; i<N; i++)
		for(j=0; j<N; j++)
		{
			matrizC[i][j]=0;

			for(k=0;k < N;k++){
				matrizC[i][j] += matrizA[i][k] * matrizB[k][j];
			}
		}


}

void imprimirMatrices(int N, int matrizResult[3][3]){

	int i=0;
        int j=0;

	for(i=0; i<N; i++)
	{
		for(j=0; j<N; j++)
		{

			printf("%d", matrizResult[i][j]);
			printf("  ");
		}
		printf("\n");
	}

}
