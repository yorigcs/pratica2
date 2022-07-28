-- QUESTION 1 --
SELECT COUNT("endDate") 
FROM experiences;
-- QUESTION 2 --
SELECT e."userId" AS id, COUNT(id) AS educatiONs
FROM educatiONs e 
GROUP BY  "userId"
ORDER BY educatiONs DESC;
-- QUESTION 3 --
SELECT u."name" AS writer, COUNT(t.id) AS testimONailCOUNT
FROM testimONials t  
JOIN users u 
ON u.id = t."writerId"  
AND u.id = 435
GROUP BY u."name" ;
-- QUESTION 4 --

SELECT max(j.salary) AS maximumSalary, r."name" AS "role"
FROM jobs j 
JOIN roles r 
ON j."roleId"  = r.id AND j.active = true
GROUP BY r."name" 
ORDER BY maximumSalary ASC;
-- CHALLENGE --
SELECT s."name"  AS school, c."name" AS course, COUNT(e."userId") AS studentCOUNT
FROM educatiONs e 
JOIN courses c  
ON e."courseId" = c.id  
AND (e.status ='ONgoing' or e.status ='finished') 
JOIN schools s ON e."schoolId" = s.id 
GROUP BY c."name", s."name" 
ORDER BY studentCOUNT DESC
LIMIT 3;