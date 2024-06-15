%Ingresar una lista de elementos y mostrar sus dos primeros elementos.

% Regla para leer una lista de elementos
ingredientes([pan, queso, carne, cebolla, ketchup, mostaza]).

mostrar_cabeza_y_primeroCola([Elemento1,Elemento2|_]) :- 
    write('Cabeza: '), write(Elemento1), nl, 
    write('Primer elemento de la cola: '), write(Elemento2), nl.

% Regla principal que combina leer y mostrar la lista
inicio :- 
    ingredientes(L), 
    mostrar_cabeza_y_primeroCola(L).