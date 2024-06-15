%Ingresar una lista de elementos e informar cuántos elementos tiene.

% Regla para leer una lista de elementos
leer_lista(L) :- 
    write('Ingrese una lista de elementos (terminada con un punto y coma seguido de enter): '), 
    read(L).

/* La lista vacía no contiene elementos */
contar_elementos([],0).

/* Cant. elem. lista =  cant. elem. cola +  1 */
contar_elementos([_|T],Cant):- contar_elementos(T,Cant_cola), 
	Cant is Cant_cola + 1.


inicio :- 
    leer_lista(L),
    contar_elementos(L,Cant),
    write("La cantidad de elementos en la lista es: "),write(Cant).