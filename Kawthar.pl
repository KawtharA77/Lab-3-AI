male(abdulaziz).
male(mohammed).
male(salem).
male(majed).
male(ali).

female(fatimah).
female(maria).
female(noor).
female(layan).
female(yara).
female(jood).

parent(fatimah, maria).
parent(abdulaziz, maria).
parent(fatimah, mohammed).
parent(abdulaziz, mohammed).
parent(fatimah, salem).
parent(abdulaziz, salem).
parent(fatimah, noor).
parent(abdulaziz, noor).

parent(salem, layan).
parent(salem, majed).
parent(salem, yara).

parent(noor, ali).
parent(noor, jood).

father(X, Y) :-
    parent(X, Y),
    male(X).

mother(X, Y) :-
    parent(X, Y),
    female(X).

sister(X, Y) :-
    parent(P, X),
    parent(P, Y),
    female(X),
    X \= Y.

brother(X, Y) :-
    parent(P, X),
    parent(P, Y),
    male(X),
    X \= Y.
