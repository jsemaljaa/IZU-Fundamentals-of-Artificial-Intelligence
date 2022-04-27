% Zadání č. 33:
% Napište program řešící úkol daný predikátem u33(LIN,LOUT), kde LIN je vstupní 
% celočíselný seznam a LOUT je výstupní seznam obsahující všechny prvky seznamu 
% LIN, ve kterém jsou všechna sudá čísla převedena na lichá odečtením jedničky. 

% Testovací predikáty:                                 	% LOUT 
% u33_1:- u33([5,-3,4,8,3,1,0,-2], LOUT),write(LOUT).	% [5,-3,3,7,3,1,-1,-3]
% u33_2:- u33([10,3,1,7],LOUT),write(LOUT).				% [9,3,1,7]
% u33_3:- u33([],LOUT),write(LOUT).						% []
% u33_r:- write('Zadej LIN: '),read(LIN),u33(LIN,LOUT),write(LOUT).

u33(LIN,LOUT):- listWrite(LIN, LOUT).

even(X) :- integer(X), X mod 2 =:= 0.

listWrite([],[]).
listWrite([H|T], LOUT) :- (even(H) -> HH is H - 1, LOUT=[HH|T1], listWrite(T,T1) ; LOUT=[H|T1], listWrite(T, T1)).