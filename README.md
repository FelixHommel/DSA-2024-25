### DSA Course @ Ulm Universiy WS 2024/25

## P1 - P6
missing because I lost them on my old PC

## P7
P7 is about finding the most cost efficient way of connecting treehouses with each other.
It is utilizing Minimum spanning trees with Kursskal's algorithm and a Union-Find Data Structure.

For a sample input:

1\
5 7\
1 2 4\
3 1 1\
2 3 2\
1 4 2\
4 3 2\
2 4 3\
1 5 5

the expected result is 10

## P8
P8 is about finding the furthest away treehouse from a starting point.
It is utilizing Dijkstra's algorithm to find the shortest path from the starting point to all other
points. After that the longest of these can easily be found.

For a sample input:

1\
4 5\
1 2 2\
2 4 5\
3 4 3\
3 2 1\
1 3 7

the expected output is 6

## P11
P11 is a simple greatest common divisor problem. It wants you to print the minimal amount of tiles 
required to cover a area of x * y. This can be easily done with the gcd of x and y and then dividing
both x and y by the gcd(x, y) and then multiplying the results.

Sample Input:

4\
6 3\
6 15\
350 210\
12767 29767\

the expected result:

2\
10\
15\
1315001
