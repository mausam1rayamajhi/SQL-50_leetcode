/*
ou are given a table, Functions, containing two columns: X and Y.

Two pairs (X1, Y1) and (X2, Y2) are said to be symmetric pairs if X1 = Y2 and X2 = Y1.
Write a query to output all such symmetric pairs in ascending order by the value of X. List the rows such that X1 ≤ Y1.
Sample Input

Sample Output
20 20
20 21
22 23*/


select distinct f1.x, f1.y
from functions f1
join functions f2
on f1.x = f2.y and f1.y = f2.x
where f1.x< f1.y

union

select x, y 
from functions
where x = y
group by x,y
having count(*)>1

order by 1 asc ;
