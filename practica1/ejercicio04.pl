%4. Dados los siguientes predicados: 
%hombre(unHombre). mujer(unaMujer). padres(persona, madre, padre). 
%a. Construya una base de hechos con los miembros de su familia. 
%b. Defina las siguientes reglas:  
%   • hermana/2, donde hermana(A,B) significa que A es hermana de B. 
%   • nieto/2, donde nieto(A,B) significa que A es el nieto de B.  
%   • abuelo/2, donde abuelo(A,B) significa que A es el abuelo de B.  
%   • tia/2, donde tia(A,B) significa que A es la tía de B. 
%Esta regla definirla, en una primera instancia, valiéndose sólo de los hechos disponibles. 
%En una segunda instancia, valiéndose de alguna otra regla que pudieron haber definido previamente. %

%a.
hombre(nahuel).
hombre(diego).
hombre(oscar).
hombre(kuki).
hombre(mario).
hombre(nico).
hombre(nacho). 
mujer(sofia).
mujer(luciana).
mujer(lely).
mujer(mary).
mujer(vero).

padres(nahuel, luciana, diego).
padres(sofia, luciana, diego).
padres(nico, vero, mario).
padres(nacho, vero, mario).
padres(diego, mary, oscar).
padres(luciana, lely, kuki).
padres(mario, lely, kuki).

%b.

hermana(A,B):-mujer(A),padres(A,X,Y),padres(B,X,Y).

nieto(A,B):-hombre(A),padres(A,X,_),padres(X,B,_).
nieto(A,B):-hombre(A),padres(A,X,_),padres(X,_,B).
nieto(A,B):-hombre(A),padres(A,_,X),padres(X,B,_).
nieto(A,B):-hombre(A),padres(A,_,X),padres(X,_,B).

abuelo(A,B):-hombre(A),padres(B,X,_),padres(X,_,A).
abuelo(A,B):-hombre(A),padres(B,_,X),padres(X,_,A).

tia(A,B):-mujer(A), padres(A,X,Y),padres(C,X,Y), padres(B,C,_).
tia(A,B):-mujer(A), padres(A,X,Y),padres(C,X,Y), padres(B,_,C).