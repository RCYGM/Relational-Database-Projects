# Relational-Database-Projects

## Universe Database Project - Examination

### Project Description

This project focused on designing, creating, and managing a relational database in **PostgreSQL** to model an expansive representation of the universe. The database incorporates galaxies, stars, planets, moons, and exploration missions, each with interconnected relationships and meaningful data points.

The project was developed as part of an exam to evaluate proficiency in relational database design, SQL syntax, and query building, showcasing a comprehensive understanding of complex data relationships.

---

### What I Learned

1. **Relational Database Fundamentals**

   - Created and managed tables with "one-to-many" and "many-to-one" relationships.
   - Ensured proper schema design with constraints to enforce data integrity.

2. **Schema Design and Constraints**

   - Utilized `PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL`, and `UNIQUE` constraints to model realistic relationships.
   - Applied consistent naming conventions for columns, particularly for primary and foreign keys.

3. **SQL Syntax and Querying**

   - Executed complex SQL queries using `JOIN` to combine data across multiple tables.
   - Implemented advanced filters with `WHERE`, `GROUP BY`, and `HAVING` clauses for data manipulation.

4. **Table Design and Population**

   - Modeled the universe with five main entities: `galaxy`, `star`, `planet`, `moon`, and `exploration_mission`.
   - Populated each table with real and hypothetical data to reflect diversity and complexity.

5. **Data Export**
   - Utilized tools like `pg_dump` to create and manage `.sql` scripts for portability and sharing.

---

### Key Features of the Universe Database

1. **Entity Relationships**

   - **Galaxies:** Serve as the foundational entities, linked to stars.
   - **Stars:** Interconnected with galaxies and planets, representing stellar systems.
   - **Planets:** Host moons and are tied to stars, enabling planetary exploration modeling.
   - **Moons:** Include geological and compositional details, tied to parent planets.
   - **Exploration Missions:** Track objectives, crew size, budgets, and results.

2. **Data Constraints**

   - Consistent use of `SERIAL` for auto-incrementing primary keys.
   - Foreign key relationships ensure referential integrity across tables.

3. **Scalable Schema**

   - Tables are designed to accommodate further data expansion, such as additional celestial bodies or missions.

4. **Complex Queries**
   - Query results demonstrate interrelated data retrieval, like identifying all moons of planets within a specific galaxy or missions targeting specific stars.

---

This project reflects a thorough understanding of relational database design principles, practical SQL skills, and the ability to model and query complex relationships effectively.

## Mario Database Project | course #2 -165 Lessons

### Project Description

This project involved designing, creating, and managing a relational database in **PostgreSQL** to model information related to characters, actions, and sounds from the Mario universe. Through this project, I applied fundamental concepts of relational databases and SQL queries to explore and manipulate data effectively.

---

### What I Learned

1. **Relational Database Fundamentals**

   - Created and managed tables with "one-to-one," "one-to-many," and "many-to-many" relationships.

2. **Schema Design and Constraints**

   - Used `PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL`, and `UNIQUE` constraints to ensure data integrity.
   - Modeled junction tables for complex relationships.

3. **SQL Queries**

   - Built complex queries using `JOIN` to combine data from multiple tables.
   - Filtered, selected, and sorted data using `WHERE` and `ORDER BY`.

4. **Data Export and Import**

   - Utilized tools like `pg_dump` to create `.sql` files for sharing and migrating the database.

5. **Relationship Modeling**
   - Designed "one-to-one" relationships between tables like `characters` and `more_info`.
   - Implemented "many-to-many" relationships using junction tables like `character_actions`.

---

## Bash Project | course #1 -170 Lessons

### Project Description

The terminal allows you to send text commands to your computer to manipulate the file system, run programs, automate tasks, and much more.

In this **170-lesson** course, I learned the essential terminal commands by creating a website boilerplate structure using only the command line.

---

### What I Learned

1. **Terminal Navigation**

   - Commands to move between directories and list files.

2. **File and Directory Management**

   - Creating, deleting, and manipulating files and folders directly from the terminal.

3. **Task Automation**

   - Using scripts to execute repetitive processes and simplify workflows.

4. **Building a Website Structure**
   - Creating a complete website boilerplate, organizing HTML, CSS, and JavaScript files.

---
