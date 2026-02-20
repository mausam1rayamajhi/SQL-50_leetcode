/*
Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
Input Format
The CITY and COUNTRY tables are described as follows:*/


select z.name
from country c
join city z
on z.countrycode = c.code
where c.continent = 'Africa'
