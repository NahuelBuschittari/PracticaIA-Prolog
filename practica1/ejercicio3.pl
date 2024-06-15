%Escribir un programa Prolog que responda consultas acerca de cuáles son los rivales de una determinada selección en un campeonato mundial.  
%Una selección tiene como rivales todos los otros equipos de su mismo grupo. 
%Incluir en el programa la siguiente información:  
%•  El grupo 1 está formado por Brasil, España, Jamaica e Italia.  
%•  El grupo 2 está formado por Argentina, Nigeria, Holanda y Escocia.  
%El programa debe ser capaz de responder a las siguientes consultas: 
%a) ¿Son rivales Argentina y Brasil? 
%b) ¿Cuáles son los rivales de un determinado equipo (por ejemplo Holanda)? %

pertenece(brasil,grupo1).
pertenece(espana,grupo1).
pertenece(jamaica,grupo1).
pertenece(italia,grupo1).

pertenece(argentina,grupo2).
pertenece(nigeria,grupo2).
pertenece(holanda,grupo2).
pertenece(escocia,grupo2).

rivales(X,Y):-pertenece(X,G),pertenece(Y,G).
