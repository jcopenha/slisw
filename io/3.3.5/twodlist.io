TwoDList := Object clone
TwoDList dim := method(x,y,
                    self myList := list();
                    for(i, 0, y-1, self myList append(
                        subList := list();
                        for(n, 0, x-1, subList append(nil)))))
TwoDList set := method(x,y,val,
                    self myList at(y) atPut(x,val))
TwoDList dim(2,2) println

TwoDList set(0,0,"first")
TwoDList set(1,1,"last")
TwoDList myList println

