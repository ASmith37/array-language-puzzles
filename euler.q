/ On windows run Q as "C:/q/w32/q
/ Run this file using "\l euler.q"
/
/ Problem 1 - Multiples of 3 and 5
/ If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
/
limit:1000
sum{x*(0=x mod 3) or 0=x mod 5}til limit
/
/ Execution:
/ limit:10
/ til limit -> til 10                 -> (0 1 2 3 4 5 6 7 8 9)
/ (0 1 2 3 4 5 6 7 8 9) mod 5         -> (0 1 2 3 4 0 1 2 3 4)
/ 0=(0 1 2 3 4 0 1 2 3 4)             -> 1000010000b
/ (0 1 2 3 4 5 6 7 8 9) mod 3         -> (0 1 2 0 1 2 0 1 2 0)
/ 0=(0 1 2 0 1 2 0 1 2 0)             -> 1001001001b
/ 1001001001b or 1000010000b          -> 1001011001b
/ (0 1 2 3 4 5 6 7 8 9) * 1001011001b -> (0 0 0 3 0 5 6 0 0 9)
/ sum (0 0 0 3 0 5 6 0 0 9)           -> 23
