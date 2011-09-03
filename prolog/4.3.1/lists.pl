myreverse([Head1|[]], [Head1]).
myreverse([Head1|Tail], List) :- 
    myreverse(Tail, List1), append(List1, [Head1], List).
