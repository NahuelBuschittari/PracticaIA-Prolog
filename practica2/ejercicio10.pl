inicio:- write("Ingrese una lista de elementos: "), read(Lista), 
    write("Ingrese el elemento a buscar: "), read(X), pertenece(X,Lista).

%  si  terminé de recorrer la lista, el elemento no pertenece  a la misma
pertenece(X,[]):- write(X),write(" NO pertenece a la lista."). 

% verificamos si X es igual a la cabeza de la lista 
pertenece(X,[X|_]):- write(X),write(" SI pertenece a la lista.").

% caso contrario, verificamos si X pertenece a la cola 
pertenece(X,[_|T]):- pertenece(X,T).
