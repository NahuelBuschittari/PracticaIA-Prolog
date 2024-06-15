%13. Hacer un programa que permita ingresar  un número y calcule 
%la sumatoria de sus términos descontados en una unidad (hasta llegar a cero) pares e impares.  
%suma(N,SumPares,SumImpares).   
    %. N es el número ingresado (argumento de entrada).  
    %. SumPares es uno de los resultados calculados (argumento de salida).  
    %. SumImpares es uno de los resultados calculados (argumento de salida). %

inicio:-write('Ingrese un numero: '),read(N), suma(N,SumPares,SumImpares), write('La suma de los numeros pares es: '),write(SumPares), write('. La suma de los numeros impares es: '),write(SumImpares).

suma(0,0,0).
suma(N,SumPares,SumImpares):- 0 is N mod 2, Ant is N-1, suma(Ant,SumP,SumImpares), SumPares is N+SumP.
suma(N,SumPares,SumImpares):- 1 is N mod 2, Ant is N-1, suma(Ant,SumPares,SumI), SumImpares is N+SumI.