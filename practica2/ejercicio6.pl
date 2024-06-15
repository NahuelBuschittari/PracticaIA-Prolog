%Ingresar una lista de números enteros y calcular la diferencia entre el primero 
%y el último de ellos.

% Regla para leer una lista de elementos
leer_lista(L) :- 
    write('Ingrese una lista de números enteros (terminada con un punto y coma seguido de enter): '), 
    read(L).

% Regla para obtener el último elemento de una lista
obtener_ultimo([Ultimo], Ultimo).
obtener_ultimo([_ | Cola], Ultimo) :- 
    obtener_ultimo(Cola, Ultimo).

% Regla para mostrar la diferencia entre el primer y el último elemento
mostrar_diferencia([Cabeza | Cola]) :-
    obtener_ultimo(Cola, Ultimo),
    Diferencia is Cabeza - Ultimo,
    write('La diferencia es: '), write(Diferencia), nl.

% Regla principal que combina leer y mostrar la lista
inicio :- 
    leer_lista(L),
    mostrar_diferencia(L).

