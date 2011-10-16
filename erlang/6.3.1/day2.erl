-module(day2).
-export([myselect/2]).


myselect(Keyword, List) -> 
        io:format("~p~n", [element(2,
                            lists:nth(1,
                             lists:filter(fun(X) -> case X of 
                                                        {Keyword, _} -> true;
                                                                   _ -> false
                                                    end 
                                          end, List)))]).


%% 52> Cart = [{"first", 2, 1.0}, {"second", 3, 3.50}].
%% [{"first",2,1.0},{"second",3,3.5}]
%% 53> Newcart = [{Item, Q * P} || {Item, Q, P} <- Cart].
%% [{"first",2.0},{"second",10.5}]

