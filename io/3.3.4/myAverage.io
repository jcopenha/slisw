Math := Object clone
Math myAverage := method(a,
                    count := a size;
                    total := a sum;
                    total / count;)

m1 := list(1,1,1,1)
Math myAverage(m1) println

m1 := list(1,2,2,1)
Math myAverage(m1) println

m1 := list(1,"what",2,1)
Math myAverage(m1) println
