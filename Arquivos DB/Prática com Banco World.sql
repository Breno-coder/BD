

SELECT 
	ID 'Code City'
    ,upper(country.Name) as 'Country Name'
    ,lower(city.Name) as 'City Name' 
    ,District
    ,CONCAT(city.Population, " Millions") Population
    ,round(sqrt(city.Population), 2) 'Raiz Quadrada'
    #,min(city.Population) menor
FROM 
	world.city
JOIN country ON city.CountryCode = country.Code
#WHERE
	#city.Name like '%claro%' and 
	#city.District = 'Minas Gerais'
    /* and city.Population <= min(city.Population) */
GROUP BY city.ID, city.Population
HAVING 'Country Name' != 'BRAZIL'
ORDER BY city.Name, 'Country Name','Code City' ASC;

SELECT * FROM city;
SELECT * FROM countrylanguage;
SELECT DISTINCT
	city.id, city.Name, city.CountryCode, city.District, countrylanguage.Language
FROM city, countrylanguage WHERE countrylanguage.CountryCode = 'BRA';
SELECT  
	city.id, city.Name, city.CountryCode, city.District, countrylanguage.Language
FROM city, countrylanguage WHERE countrylanguage.CountryCode = 'BRA';







