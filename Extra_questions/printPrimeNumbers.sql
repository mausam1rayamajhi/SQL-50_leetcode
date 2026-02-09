/*
Write a query to print all prime numbers less than or equal to . Print your result on a single line, and use the ampersand () character as your separator (instead of a space).
For example, the output for all prime numbers  would be:
2&3&5&7
*/

with recursive nums(
  select 2 as n 
  union all 
  select n + 1
  from nums 
  where n < 1000
),
primes(
  select a.n from nums a
  where not exist(
  select 1
  from nums b
  where b.n < sqrt(a.n)
  and b.n % a.n = 0
  and b.n < a.n
  )
)

select group_concat(n order by n separator '&')
from primes
