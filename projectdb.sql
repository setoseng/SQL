-- PROBLEMS 
--1. What are all projects that use JavaScript?
SELECT * FROM tech
	LEFT OUTER JOIN project_uses_tech
		on tech.id = project_uses_tech.tech_id WHERE tech.name='JavaScript';

--2. What are all technologies used by the Personal Website?
SELECT * FROM project
	LEFT OUTER JOIN project_uses_tech
		on project.id = project_uses_tech.project_id WHERE project.name = 'Personal Website';

--3. Perform a left outer join from the tech table to the project_uses_tech table - which techs has no associated project?
SELECT 
	name,count(tech_id) 
FROM 
	tech
LEFT OUTER JOIN
	project_uses_tech 
ON 
	tech.id = project_uses_tech.tech_id
GROUP BY 
	tech.id;

--4. Based on the previous query, get the count of the number of techs used by each project.
SELECT 
	name,count(tech_id) 
FROM 
	tech
LEFT OUTER JOIN
	project_uses_tech 
ON 
	tech.id = project_uses_tech.tech_id
GROUP BY 
	tech.id;

--5. Perform a left outer join from the project table to the project_users_tech table - which projects has no associated tech?
SELECT 
	* 
FROM 
	project
LEFT OUTER JOIN 
	project_uses_tech on project_uses_tech.project_id = project.id;

--6. Based on the previous query, get the count of the number of projects that use each tech.
SELECT 
	name,count(project_id) 
FROM 
	project
LEFT OUTER JOIN
	project_uses_tech 
ON 
	project_uses_tech.project_id = project.id 
GROUP BY 
	project.id;

--7. List all projects along with each technology used by it. You will need to do a three-way join.
SELECT 
	* 
FROM 
	project
LEFT OUTER JOIN 
	project_uses_tech on project_uses_tech.project_id = project.id
LEFT OUTER JOIN
	tech on project_uses_tech.tech_id = tech.id;
--8. List all the distinct techs that are used by at least one project.
SELECT 
	DISTINCT(tech.name)
FROM 
	project
INNER JOIN 
	project_uses_tech on project_uses_tech.project_id = project.id
INNER JOIN
	tech on project_uses_tech.tech_id = tech.id;
--9. List all the distinct techs that are not used by any projects.
SELECT 
	DISTINCT(tech.name)
FROM 
	project
INNER JOIN 
	project_uses_tech on project_uses_tech.project_id = project.id
INNER JOIN
	tech on project_uses_tech.tech_id = tech.id
WHERE
	tech.id NOT NULL;
--10. List all the distinct projects that use at least one tech.
SELECT 
	DISTINCT(project.name)
FROM 
	project
LEFT OUTER JOIN 
	project_uses_tech on project_uses_tech.project_id = project.id
LEFT OUTER JOIN
	tech on project_uses_tech.tech_id = tech.id
WHERE
	tech.id IS NOT NULL;


--11. List all the distinct projects that use no tech.
SELECT 
	DISTINCT(project.name)
FROM 
	project
LEFT OUTER JOIN 
	project_uses_tech on project_uses_tech.project_id = project.id
LEFT OUTER JOIN
	tech on project_uses_tech.tech_id = tech.id
WHERE
	tech.id IS NULL;
--12. Order the projects by how many tech it uses.
SELECT 
	tech.name,COUNT(tech.id)
FROM 
	project
LEFT OUTER JOIN 
	project_uses_tech on project_uses_tech.project_id = project.id
LEFT OUTER JOIN
	tech on project_uses_tech.tech_id = tech.id
GROUP BY 
	tech.id
ORDER BY
	tech.id;
--13.
SELECT 
	project.name,COUNT(project.id)
FROM 
	project
LEFT OUTER JOIN 
	project_uses_tech on project_uses_tech.project_id = project.id
LEFT OUTER JOIN
	tech on project_uses_tech.tech_id = tech.id
GROUP BY 
	project.id
ORDER BY
	project.id;











