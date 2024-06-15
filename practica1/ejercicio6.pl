%6. Escribir un programa Prolog que ayude a un organizador a armar un festival, 
%considerando las diferentes bandas de música que se pueden formar en cada ciudad.  
%Para formar una banda son necesarios un guitarrista, un cantante y un baterista. 
%Se dispone de la siguiente información:  
    %• Carolina y José son guitarristas y viven en Rosario.  
    %• Miguel es guitarrista y vive en Funes. 
    %• Mariano es un cantante que vive en Rosario.  
    %• Silvia es una cantante que vive en Funes.  
    %• Eduardo es un baterista que vive en Roldán.  
    %• Diego es un baterista que vive en Casilda.  
    %• Laura es una baterista que vive en Rosario.  
    %• Mauro es cantante y vive en Funes. 
%El programa debe responder si en una ciudad (dato de entrada), se puede o no formar una banda. %

vive(carolina,rosario).
vive(jose,rosario).
vive(miguel,funes).
vive(mariano,rosario).
vive(silvia,funes).
vive(eduardo,roldan).
vive(diego,casilda).
vive(laura,rosario).
vive(mauro,funes).
toca(mauro,cantante).
toca(laura,bateria).
toca(diego,bateria).
toca(silvia,cantante).
toca(eduardo,bateria).
toca(mariano,cantante).
toca(carolina,guitarra).
toca(jose,guitarra).
toca(miguel,guitarra).

banda_en(X):-vive(C,X),vive(G,X),vive(B,X),toca(C,cantante),toca(G,guitarra),toca(B,bateria).