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

acordemayor(A,B,C,D,E,F):-distancia(A,B,C,D,X),distancia(C,D,E,F,Y),
    terceramayor(X),terceramenor(Y).
acordemenor(A,B,C,D,E,F):-distancia(A,B,C,D,X),distancia(C,D,E,F,Y),
    terceramenor(X),terceramayor(Y).
triada(A,B,C,D,E,F):-acordemayor(A,B,C,D,E,F);
acordemenor(A,B,C,D,E,F).

%acorde(A,B,C,D,E,F):- terceraMayor(A,4).

tipoacorde(mayor).
tipoacorde(menor).

acordefundamental(A,mayor):-nota(A,X), Y is X + 4, Z is Y + 3,
    nota(B,Y), nota(C,Z),format('~w',[A]),format('~w',[B]), format('~w',[C]).
acordefundamental(A,menor):-nota(A,X), Y is X + 3, Z is Y + 4,nota(B,Y),
    nota(C,Z), format('~w',[A]),format('~w',[B]), format('~w',[C]).




%triada(A,B,C,D,E,F):- nota(A,X), nota(C,Y), nota(E,Z),
%   U is 12*B + X, V is 12*D + Y, W is 12*F + Z,
%   M is abs(U - V), N is abs(U - W), M is 4, N is 7.
   %format('~w',[M]), format('~w',[N]).
