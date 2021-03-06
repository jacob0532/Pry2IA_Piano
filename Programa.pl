%hola.

prueba(cosa,algo).

nota(do,0).
nota(dos,1).
nota(reb,1).
nota(re,2).
nota(res,3).
nota(mib,3).
nota(mi,4).
nota(fa,5).
nota(fas,6).
nota(solb,6).
nota(sol,7).
nota(sols,8).
nota(lab,8).
nota(la,9).
nota(las,10).
nota(sib,10).
nota(si,11).

posicion(A,B,C) :- nota(A,X),C is X + 12*B.
distancia(A,B,C,D,E) :- posicion(A,B,X), posicion(C,D,Y),
    E is abs(X - Y).

terceramayor(4).
terceramenor(3).
cuartaperfecta(5).

acordemayor(A,B,C,D,E,F):-distancia(A,B,C,D,X),distancia(C,D,E,F,Y),
    terceramayor(X),terceramenor(Y).
acordemenor(A,B,C,D,E,F):-distancia(A,B,C,D,X),distancia(C,D,E,F,Y),
    terceramenor(X),terceramayor(Y).
primerainversionmayor(A,B,C,D,E,F):-distancia(A,B,C,D,X),distancia(C,D,E,F,Y),
    terceramayor(X),cuartaperfecta(Y).
primerainversionmenor(A,B,C,D,E,F):-distancia(A,B,C,D,X),distancia(C,D,E,F,Y),
    terceramenor(X),cuartaperfecta(Y).
segundainersionmayor(A,B,C,D,E,F):-distancia(A,B,C,D,X),distancia(C,D,E,F,Y),
    cuartaperfecta(X),terceramayor(Y).
segundainersionmenor(A,B,C,D,E,F):-distancia(A,B,C,D,X),distancia(C,D,E,F,Y),
    cuartaperfecta(X),terceramenor(Y).
triada(A,B,C,D,E,F):-acordemayor(A,B,C,D,E,F), O = mayor, format('~w',[O]);
    acordemenor(A,B,C,D,E,F), O = menor, format('~w',[O]);
    primerainversionmayor(A,B,C,D,E,F), O = primeramayor, format('~w',[O]);
    primerainversionmenor(A,B,C,D,E,F), O = primeramenor, format('~w',[O]);
    segundainersionmayor(A,B,C,D,E,F), O = segundamayor, format('~w',[O]);
    segundainersionmenor(A,B,C,D,E,F), O = segundamenor, format('~w',[O]).

%acorde(A,B,C,D,E,F):- terceraMayor(A,4).

posnotavalida(X,Y):- X > 11, Y is X - 12; Y is X.

acordefundamental(A,mayor):-nota(A,X), Y is X + 4, Z is Y + 3, posnotavalida(Y,M),
    posnotavalida(Z,N),nota(B,M), nota(C,N), O = A-B-C,format('~w',[O]).%,
    %format('~w',[B]), format('~w',[C]).
acordefundamental(A,menor):-nota(A,X), Y is X + 3, Z is Y + 4,posnotavalida(Y,M),
    posnotavalida(Z,N),nota(B,M),nota(C,N), O = A-B-C,format('~w',[O]).%,
    %format('~w',[B]), format('~w',[C]).




%triada(A,B,C,D,E,F):- nota(A,X), nota(C,Y), nota(E,Z),
%   U is 12*B + X, V is 12*D + Y, W is 12*F + Z,
%   M is abs(U - V), N is abs(U - W), M is 4, N is 7.
   %format('~w',[M]), format('~w',[N]).
