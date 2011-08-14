# recursive method
Fib := Object clone
Fib recurse := method(n, if(n == 1 or n == 2, 1, recurse(n-1)+recurse(n-2)))

"Recursive implementation" println
Fib getSlot("recurse") println

Fib recurse(1) println
Fib recurse(2) println
Fib recurse(4) println
Fib recurse(8) println

# iteration
# for loop is inclusive (<= instead of <)
Fib iterative := method(n, if(n==1 or n==2, 1, 
                        sub0 := 1;
                        sub1 := 1;
                        total := sub1 + sub0;
                        for(i, 3, n-1, 
                            sub0 := sub1;
                            sub1 := total;
                            total := sub1 + sub0;)))

"Iterative implementation" println
Fib getSlot("iterative") println

Fib iterative(1) println
Fib iterative(2) println
Fib iterative(4) println
Fib iterative(8) println
