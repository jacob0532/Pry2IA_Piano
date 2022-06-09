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

triada(A,B,C,D,E,F):- nota(A,X), nota(C,Y), nota(E,Z),
   U is 12*B + X, V is 12*D + Y, W is 12*F + Z,
   M is abs(U - V), N is abs(U - W), M is 4, N is 7.
   %format('~w',[M]), format('~w',[N]).
