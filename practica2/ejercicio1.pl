% Ingresar una lista de elementos y mostrarla por pantalla.

% Regla para leer una lista de elementos
ingredientes([pan, queso, carne, cebolla, ketchup, mostaza]).

% Regla para mostrar la lista
mostrar_lista([Cabeza|Cola]) :- 
    write(Cabeza), nl, 
    mostrar_lista(Cola).

% Regla principal que combina leer y mostrar la lista
inicio :- 
    ingredientes(L), 
    mostrar_lista(L).

