%Ingresar una lista de números enteros e informar cuánto da la sumatoria de ellos.

% Regla para leer una lista de elementos
leer_lista(L) :- 
    write('Ingrese una lista de números enteros (terminada con un punto y coma seguido de enter): '), 
    read(L).

/* La lista vacía no contiene elementos */
sumatoria([],0).

/* Cant. elem. lista =  cant. elem. cola +  1 */
sumatoria([H|T],Acum):- sumatoria(T,Acum2), Acum is Acum2+H.
	


inicio :- 
    leer_lista(L),
    sumatoria(L,Acum),
    write("La sumatoria de los numeros de la lista es: "),write(Acum).