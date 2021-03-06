% 1. Defina um predicado somaQuad(X,Y,Q) que seja verdadeiro se Q for a soma dos quadrados de X e Y.
somaQuad(X,Y,Q) :-
   Q is (X*X) + (Y*Y).


% 2.Defina um predicado zeroInit(L) que � verdadeiro se L for uma lista que inicia com o n�mero 0 (zero)
zeroInit(L) :-
   L = [H|_],
   H is 0.


% 3. Defina um predicado hasEqHeads(L1,L2) que seja verdadeiro se as listas L1 e L2 possu�rem o mesmo primeiro elemento.
hasEqHeads(L1,L2) :-
   L1 = [A|_],
   L2 = [B|_],
   A = B.


% 4. Defina um predicado has5(L) que seja verdadeiro se L for uma lista de 5 elementos. Lembre de como funciona a unifica��o em Prolog e resolva este exerc�cio sem usar o predicado pr�-definido length
has5(L) :-
   L = [_,_,_,_,_].


% 5. Defina um predicado hasN(L,N) que seja verdadeiro se L for uma lista de N elementos. Agora voc� pode usar um predicado pr�-definido.
hasN(L,N) :-
   length(L,T),
   T = N.


% 6. Defina um predicado isBin(L) que seja verdadeiro se L for uma lista contendo somente elementos 0 e 1. Use recurs�o.
isBin([1]).
isBin([0]).
isBin(L) :-
   L = [H|T],
   isBin(T),
   (H = 0; H = 1).


% 7. Defina um predicado mesmaPosicao(A,L1,L2) para verificar se um elemento A est� na mesma posi��o nas listas L1 e L2. Assuma que L1 e L2 sejam permuta��es de uma lista de elementos distintos, sem repeti��es. Dica: procure aux�lio em predicados pr�-definidos.
mesmaPosicao(A,L1,L2):-
   nth0(X,L1,A),
   nth0(Y,L2,A),
   X = Y.


% 8. Defina um predicado repete5(E,L) que seja verdadeiro se a lista L for composta por exatamente 5 repeti��es do elemento E. N�o use recurs�o.
repete5(E,L):-
   L = [E,E,E,E,E].


% 9. Defina um predicado recursivo sumQuads(L,S) que seja verdadeiro se S for o somat�rio dos quadrados dos elementos da lista L.
sumQuads([],0).
sumQuads(L,S) :-
    L = [H|T],
    sumQuads(T,S1),
    S is H*H + S1.


% 10. Defina um predicado recursivo repete(N,E,L) que seja verdadeiro se a lista L for composta por exatamente N repeti��es do elemento E.
repete(0,_,[]).
repete(N,E,L) :-
   L = [H|T],
   Aux is N-1,
   repete(Aux,E,T),
   Aux > -1,
   H = E.


% 11. Defina um predicado recursivo mapop(L1,L2) que seja verdadeiro se a lista L2 for formada aplicando-se a opera��o 2*x+1 a cada elemento x da lista L1.
mapop([],[]).
mapop(L1,L2):-
   L1 = [H|T],
   mapop(T,L3),
   X is 2*H+1,
   append([X],L3,L2).


% 12. Defina um predicado positivos(L1,L2), de forma que L2 seja uma lista s� com os elementos positivos de L1
positivos([],[]).
positivos(L1,L2) :-
   L1 = [H|T],
   L2 = [H|T2],
   H > 0,
   positivos(T,T2).
positivos(L1,L2) :-
   L1 = [H|T],
   H =< 0,
   positivos(T,L2).






