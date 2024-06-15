%9. Ingresar una lista de números enteros y calcular su promedio. 
%Respetar el formato del predicado promedio(L,S,C) 
%donde L es la lista ingresada, S la sumatoria y C el contador de los elementos de la lista.

%Ingresar una lista de números enteros e informar cuánto da la sumatoria de ellos.

% Regla para leer una lista de elementos
leer_lista(L) :- 
    write('Ingrese una lista de números enteros (terminada con un punto y coma seguido de enter): '), 
    read(L).

/* La lista vacía no contiene elementos */
promedio([],0,0).

/* Cant. elem. lista =  cant. elem. cola +  1 */
promedio([H|T],Acum,Cant):- promedio(T,Acum2,Cant_Cola), Acum is Acum2+H, Cant is Cant_Cola+1.
	


inicio :- 
    leer_lista(L),
    promedio(L,Acum,Cant),
    Media is Acum/Cant,
    write("El promedio de los numeros de la lista es: "),write(Media).