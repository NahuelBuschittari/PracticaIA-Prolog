%Hacer un programa para calcular el factorial de un número.  
%factorial(N,Fact).  
    %. N es el número ingresado (argumento de entrada).  
    %. Fact es el resultado calculado (argumento de salida). 

inicio:- write('ingrese un numero: '),read(X),factorial(X,A),write('el factorial es: '),write(A).

factorial(0,1).
factorial(N,F):-Ant is N-1,factorial(Ant,FA),F is N*FA.