#!/usr/bin/perl

#Fichero para automatizacion de ejecucion por lotes de un ejecutable
#Dado parametro de entrada


#----------------------------MatrixMultiplication1-----------------------------

$repeticiones1 = 30;
@ejecutables1 = ("MatrixMultiplication1");
@matrizSize1 = ("50","100","200","300","400","500","600","700","800");
$path1 = "/home/carlos/Descargas/ParcialFinal/";

foreach $exe1 (@ejecutables1){
	foreach $size1 (@matrizSize1){
		$fichero1 = "$path1"."soluciones1/"."$exe1"."-size"."$size1.csv";
		print("$fichero1\n");
		for($i=0; $i<$repeticiones1; $i++){
			#print("$path1$exe1 $size1 \n"); 
			system("$path1$exe1 $size1 >> $fichero1");
		}
	}
}


#----------------------------MatrixMultiplication2-----------------------------


#Fichero para automatizacion de ejecucion por lotes de un ejecutable
#Dado parametro de entrada

$repeticiones2 = 30;
@ejecutables2 = ("MatrixMultiplication2");
@matrizSize2 = ("50","100","200","300","400","500","600","700","800","1000","1200","2000","4000");
$path2 = "/home/carlos/Descargas/ParcialFinal/";

foreach $exe2 (@ejecutables2){
	foreach $size2 (@matrizSize2){
		$fichero2 = "$path2"."soluciones2/"."$exe2"."-size"."$size2.csv";
		print("$fichero2\n");
		for($i=0; $i<$repeticiones2; $i++){
			#print("$path2$exe2 $size2 \n"); 
			system("$path2$exe2 $size2 >> $fichero2");
		}
	}
}


#----------------------------MatrixMultiplication3-----------------------------

#Fichero para automatizacion de ejecucion por lotes de un ejecutable
#Dado parametro de entrada

$repeticiones3 = 30;
@ejecutables3 = ("MatrixMultiplication3");
@matrizSize3 = ("50","100","200","300","400","500","600","700","800","1000","1200","2000","4000","6000", "8000");
@threads = ("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16");
$path3 = "/home/carlos/Descargas/ParcialFinal/";

foreach $exe3 (@ejecutables3){
	foreach $size3 (@matrizSize3){
		foreach $thread3 (@threads){
			
			$fichero3 = "$path3"."soluciones3/"."$exe3"."-size"."$size3"."-Threads"."$thread3.csv";

			#$fichero3 = "$path3"."soluciones3/"."$exe3"."-Threads"."$thread3"."-size"."$size3.csv";
			print("$fichero3\n");
			for($i=0; $i<$repeticiones3; $i++){
			#print("$path3$exe3 $size3 \n"); 
			system("$path3$exe3 $size3 $thread3 >> $fichero3");
			}

		}
		
	}
}

exit(1);
