play(bob, guitar).
play(jim, drums).
play(flea, guitar).
play(mark, flute).

genre(bob, rock).
genre(jim, jazz).
genre(flea, rock).
genre(mark, finnish_folk_metal).

genre_inst(X,Y) :- play(Z, Y), genre(Z, X).
