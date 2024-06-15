% Ingresar una lista de elementos y mostrar su cabeza y su cola.

% Regla para leer una lista de elementos
ingredientes([pan, queso, carne, cebolla, ketchup, mostaza]).

mostrar_cabeza_y_cola([Cabeza|Cola]) :- 
    write('Cabeza: '), write(Cabeza), nl, 
    write('Cola: '), write(Cola), nl.

% Regla principal que combina leer y mostrar la lista
inicio :- 
    ingredientes(L), 
    mostrar_cabeza_y_cola(L).