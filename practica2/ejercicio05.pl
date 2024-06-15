%Ingresar una lista de elementos y mostrar su último elemento.

% Regla para leer una lista de elementos
ingredientes([pan, queso, carne, cebolla, ketchup, mostaza]).

% Regla para mostrar el último elemento de la lista
mostrar_ultimo([Ultimo]) :- 
    write('Último elemento: '), write(Ultimo), nl.

mostrar_ultimo([_ | Cola]) :- 
    mostrar_ultimo(Cola).

% Regla principal que combina leer y mostrar la lista
inicio :- 
    ingredientes(L), 
    mostrar_ultimo(L).