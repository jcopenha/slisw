TwoDList := Object clone
TwoDList dim := method(x,y,
                    self myList := list();
                    for(i, 0, y-1, self myList append(
                        subList := list();
                        for(n, 0, x-1, subList append(nil)))))

TwoDList set := method(x,y,val,
                    self myList at(x) atPut(y,val))

# this is annoying why doesn't
# self clone return a new instance?
# what don't I understand here?
# and this only works on square 2d arrays
TwoDList transpose := method(
                        newList := TwoDList clone;
                        newList dim(self myList size, self myList at(0) size);
                        for(i, 0, self myList size - 1,
                            for(j, 0, self myList at(i) size - 1,
                                newList set(j,i, self myList at(i) at(j))))
                        newList)

m1 := TwoDList clone
m1 dim(2,2) println

m1 set(0,0,"first")
m1 set(0,1,"second")
m1 set(1,0,"third")
m1 set(1,1,"last")
m1 myList println

j := m1 transpose
j myList println

