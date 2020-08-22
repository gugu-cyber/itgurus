CREATE TABLE itgurus (id INTEGER PRIMARY KEY,
    fullname TEXT,
    birthyear TEXT,
    birthplace TEXT,
    gender TEXT,
    status TEXT);
    
INSERT INTO itgurus(fullname, birthyear, birthplace, gender,status) VALUES("James Gosling", "1955", "Canada", "Male","Alive" );

INSERT INTO itgurus(fullname, birthyear, birthplace, gender,status) VALUES("Bill Gates", "1955", "Seattle", "Male","Alive" );
   
INSERT INTO itgurus(fullname, birthyear, birthplace, gender,status) VALUES("Tim Berners_Lee", "1955", "London", "Male","Alive");

INSERT INTO itgurus(fullname, birthyear, birthplace, gender,status) VALUES("Steve Jobs", "1955", "San Francisco", "Male", "Dead");

INSERT INTO itgurus(fullname, birthyear, birthplace, gender,status) VALUES("Grace Hopper", "1906", "New York City", "Female", "Dead");

INSERT INTO itgurus(fullname, birthyear, birthplace, gender,status) VALUES("Martha Lane Fox", "1973", "U.K", "Female","Alive");

INSERT INTO itgurus(fullname, birthyear, birthplace, gender,status) VALUES("Stephanie Shirley", "1933", "Germany", "Female","Alive");

INSERT INTO itgurus(fullname, birthyear, birthplace, gender,status) VALUES("Annie J.Easley", "1933", "Alabama", "Female" ,"Alive");

INSERT INTO itgurus(fullname, birthyear, birthplace, gender,status) VALUES("Radia Perlman", "1951", "New Jersey", "Female","Alive");
/*
CREATE TABLE itguru_status(id INTEGER PRIMARY KEY,
    fullname TEXT,
    status TEXT);

INSERT INTO itguru_status(fullname,status ) VALUES ("James Gosling", "Alive");

INSERT INTO itguru_status(fullname,status ) VALUES ("Bill Gates", "Alive");

INSERT INTO itguru_status(fullname,status ) VALUES ("Tim Berners_Lee", "Alive");

INSERT INTO itguru_status(fullname,status ) VALUES (4, "Dead");

INSERT INTO itguru_status(fullname,status ) VALUES (5, "Dead");

INSERT INTO itguru_status(fullname,status ) VALUES (6, "Alive");

INSERT INTO itguru_status(fullname,status ) VALUES (7, "Alive");

INSERT INTO itguru_status(fullname,status ) VALUES (8, "Dead");

INSERT INTO itguru_status(fullname,status ) VALUES (9, "Alive");
*/

CREATE TABLE itguru_projects(id INTEGER PRIMARY KEY,
    itguru_id INTEGER,
    title TEXT);
    
INSERT INTO itguru_projects(itguru_id, title) VALUES (1, "Java");

INSERT INTO itguru_projects(itguru_id, title) VALUES (2, "Microsoft");

INSERT INTO itguru_projects(itguru_id, title) VALUES (3, "World Wide Web");

INSERT INTO itguru_projects(itguru_id, title) VALUES (4, "Apple Computer");

INSERT INTO itguru_projects(itguru_id, title) VALUES (5, "Cobol");

INSERT INTO itguru_projects(itguru_id, title) VALUES (6, "Lastminute");

INSERT INTO itguru_projects(itguru_id, title) VALUES (7, "XANSA");

INSERT INTO itguru_projects(itguru_id, title) VALUES (8, "NASA");

INSERT INTO itguru_projects(itguru_id, title) VALUES (9, "TORTIS");


CREATE TABLE project_pairs(id INTEGER PRIMARY KEY,
    project1_id INTEGER,
    project2_id INTEGER);
    
INSERT INTO project_pairs(project1_id, project2_id) VALUES (1, 5);

INSERT INTO project_pairs(project1_id, project2_id) VALUES (9, 6);

INSERT INTO project_pairs(project1_id, project2_id) VALUES (3, 7);

INSERT INTO project_pairs(project1_id, project2_id) VALUES (4, 8);

INSERT INTO project_pairs(project1_id, project2_id) VALUES (5, 2);


SELECT fullname,birthyear,birthplace,gender,itguru_projects.title as project_name
    FROM itgurus
    LEFT OUTER JOIN itguru_projects
    ON itgurus.id = itguru_projects.itguru_id
    GROUP BY fullname,itguru_projects.title
    ORDER BY birthyear ASC;
    
SELECT * FROM itgurus WHERE Gender = "Female";

SELECT * FROM itgurus WHERE Gender = "Male";

SELECT a.title as reviewee_project, b.title as reviewed_project FROM project_pairs
    JOIN itguru_projects a
    ON project_pairs.project1_id = a.id
    JOIN itguru_projects b 
    ON project_pairs.project2_id = b.id;

SELECT a.fullname as reviewee_project_name, b.fullname as reviewer_partner_name FROM project_pairs
    JOIN itgurus a
    ON project_pairs.project1_id = a.id
    JOIN itgurus b 
    ON project_pairs.project2_id = b.id;

