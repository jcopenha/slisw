Math := Object clone
Math sum2dArray := method(a, 
                    total := 0;
                    for(i, 0, a size - 1, 
                            total := total + a at(i) sum))

m1 := list(list(1,1,1), list(2,2,2), list(3,3,3))
Math sum2dArray(m1) println

m2 := list(list(2,2,2), list(3,3,3), list(4,4,4))
Math sum2dArray(m2) println

