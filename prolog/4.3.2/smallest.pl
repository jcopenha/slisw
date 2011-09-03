smaller(X,Y,X) :- (X=<Y).
smaller(X,Y,Y) :- (Y<X).

smallest([Head|[]], Head).
smallest([Head|Tail], Smallest) :-
    smallest(Tail, What),
    smaller(What, Head, Smallest).
