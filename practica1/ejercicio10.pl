%Dada la siguiente red de tareas de un proyecto:
anterior(a,c).
anterior(c,d).
anterior(b,d).
anterior(b,f).
anterior(d,e).
anterior(f,g).
anterior(e,h).
anterior(e,i).
anterior(h,j).
anterior(i,j).
anterior(g,j).
%Definir la regla requiere_de(X,Y), 
%la cual permite saber si para la ejecución de la tarea Y se requiere tener finalizada la tarea X. 

requiere_de(X,Y):-anterior(X,Y).
requiere_de(X,Y):-anterior(X,C),requiere_de(C,Y).