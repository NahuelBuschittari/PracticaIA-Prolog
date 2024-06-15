%Ingresar una lista de elementos y mostrar su primer elemento.

% Regla para leer una lista de elementos
ingredientes([pan, queso, carne, cebolla, ketchup, mostaza]).

mostrar_cabeza([Cabeza|_]) :- 
    write('Cabeza: '), write(Cabeza).

% Regla principal que combina leer y mostrar la lista
inicio :- 
    ingredientes(L), 
    mostrar_cabeza(L).