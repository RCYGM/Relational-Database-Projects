# Relational-Database-Projects

## Project Description

In these courses, I used professional development tools such as Visual Studio Code, PostgreSQL, and the Linux/Unix command line to complete interactive tutorials and build practical projects.

I mastered essential terminal commands, from navigating and manipulating a file system to programming in Bash and performing advanced tasks, optimizing my workflow and automating key processes.

Additionally, I designed and managed relational databases with PostgreSQL, using SQL as the language to interact with these databases. I learned how to structure, query, and automate data management efficiently and professionally.

Finally, I worked with Git, the version control system, which allowed me to manage my code securely and collaborate on projects effectively, consolidating essential skills for any developer.

Below, I will present my learning path, organized from the most recent course to the oldest, showing how I progressively built my knowledge step by step.

---

# Castle Script | Course #8 - 40 Lessons

This project is a simple Bash script that draws a castle in the terminal. It demonstrates basic terminal commands, text manipulation, and editing files with Nano.

## Features

- Creates a castle design with multiple levels, windows, and a door.
- Includes a welcome message displayed above the castle.
- Uses the `echo` command to print structured text.

## What I Improved

- Using **Nano** to create and edit files in the terminal.
- Fundamentals of Bash scripting with the `echo` command.
- Navigating and managing files from the terminal.
- Cutting, pasting, and saving changes using Nano commands.
- Executing scripts in Bash with `bash filename`.

---

# Salon Appointment System Examination #3

This project demonstrates my ability to build a basic appointment system for a beauty salon using Bash and PostgreSQL. Through this exam, my skills in database management, task automation with scripts, and creating functional interaction flows are certified.

## Skills Evaluated

### Database Management

- Creation of a relational database with structured and normalized tables (`customers`, `services`, `appointments`).
- Configuration of primary and foreign keys to ensure data integrity.
- Implementation of constraints such as unique values and non-nullable columns.

### Bash Automation

- Connection to a PostgreSQL database from a Bash script using `psql`.
- Execution of dynamic queries to display, insert, and retrieve data.
- Management of user inputs to register customers and schedule appointments.
- Error handling for invalid inputs, ensuring the functionality of the system.

### User Interaction

- Generation of a list of services fetched directly from the database.
- Logical flow to validate selections and perform specific actions based on the provided inputs.
- Creation of clear and personalized confirmation messages for users.

---

# Bike Rental Shop | Course #7 - 210 Lessons

## Project Description

In this project, I improved my experience by integrating SQL with Bash scripts to create a fully functional bike rental application. The goal was to develop an application that allows managing bike rentals, interacting with databases, querying for information about available bikes, and managing them through an interactive command-line system. Throughout the lessons, I worked with database tables, SQL queries, and user interaction handling, which allowed me to automate tasks and improve process efficiency.

---

## What I Improved in My Experience

### Creating and Managing Tables in a Database

- **Table Definition**: I improved my experience by creating and managing tables in a database, such as **bikes**, **customers**, and **rentals**, to store information about bikes, customers, and rentals.

### Performing SQL Queries

- **SQL Queries**: I enhanced my ability to perform advanced SQL queries to retrieve data from the database, such as available bikes, customers who rented bikes, and bikes that were returned.

### User Interaction in the Script

- **User Input**: I improved my experience interacting with the user, receiving inputs like the customer’s phone number and bike ID, and using that information to interact with the database.

### Updating Records in the Database

- **Updating Records**: I improved my ability to update records in the database, such as **date_returned** and **available**, to reflect the updated rental status when a bike was returned.

### Control Flow in Bash

- **Flow Control**: I improved my understanding of control structures in Bash, such as **if**, **else**, and **while**, to manage interactions and processes in the rental application.

## Summary

This project allowed me to combine several previously learned skills into one workflow to create a fully functional bike rental application. I improved my experience in database management, advanced SQL querying, user interaction, real-time record updating, and using control structures in Bash to automate processes and enhance efficiency in managing rented and returned bikes.

---

# Kitty Ipsum Translator Project | Course #6 - 140 Lessons

## Project Description

In this project, I learned how to work with advanced Bash commands to manipulate text files and perform content transformations. The goal was to create a "Kitty Ipsum" to "Doggy Ipsum" translator using various commands to modify and automate tasks within text files. Throughout the lessons, I worked with commands to search, replace, and organize data efficiently, which allowed me to understand how to manipulate text data in a more advanced way.

---

## What I Learned

### File Manipulation Commands

- **cat**: Used to display the content of files in the terminal.
- **wc**: Used to count lines, words, and characters in files.
- **grep**: Used to search for specific patterns within files, using regular expressions for complex searches.
- **sed**: Used to replace or modify text within a file.
- **echo**: Used to print text in the terminal and manipulate output, including redirecting it to files.
- **touch**: Used to create empty files or update the modification date of existing files.
- **diff**: Used to compare two files and show the differences between them.

### Input and Output Redirection

- Used `>` to redirect the output of a command to a file (overwriting the content).
- Used `>>` to append output to a file without overwriting it.
- Used `<` to redirect the input of a file to a command.

### Pipe Usage (`|`)

- Redirected the output of one command to the input of another, allowing me to chain commands to obtain more complex results. Example: `cat file.txt | grep 'pattern'`.

### Regular Expressions

- Learned how to use regular expressions in `grep` and `sed` to search for and replace complex patterns within files. Example: `grep 'cat[a-z]*' filename.txt` to search for words starting with "cat".

### Automation with Scripts

- Used a Bash script to automate the process of translating "Kitty Ipsum" to "Doggy Ipsum", utilizing `sed` to perform multiple text replacements efficiently.
- Learned how to manipulate input and output within scripts, enabling me to work with text files more smoothly and dynamically.

### File Comparison

- Used `diff` to compare files and find differences between them, and learned to use options like `--color` to improve output readability.

### Improving Readability

- Used options like `--color` in `grep` and `diff` to highlight differences and make it easier to identify patterns within files.

## Summary

This project taught me how to manipulate text files in an advanced way using Bash. I learned how to search and replace patterns within files, count words and lines, and compare files to find differences. I also gained experience in creating scripts to automate repetitive tasks and improve efficiency when working with text files in the terminal.

---

# World Cup - Examination #2

## Project Description

This project focuses on designing, creating, and managing a relational database in **PostgreSQL** to model the World Cup tournament. The database incorporates teams, games, rounds, and results, with interconnected relationships and meaningful data points.

The project was developed as an examination to evaluate proficiency in relational database design, SQL syntax, and query creation, demonstrating a comprehensive understanding of data relationships and analysis.

---

## What I Learned

1. **Relational Database Fundamentals**

   - Created and managed tables with "one-to-many" and "many-to-one" relationships.
   - Ensured proper schema design with constraints to maintain data integrity.

2. **Schema Design and Constraints**

   - Utilized `PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL`, and `UNIQUE` constraints to model realistic relationships.
   - Applied consistent naming conventions for columns, particularly for primary and foreign keys.

3. **SQL Syntax and Querying**

   - Executed complex SQL queries using `JOIN` to combine data across multiple tables.
   - Implemented advanced filters with `WHERE`, `GROUP BY`, and `HAVING` clauses for data manipulation.

4. **Table Design and Population**

   - Modeled the tournament with two main entities: `teams` and `games`.
   - Populated the tables with structured and realistic data to reflect the diversity and complexity of the matches.

5. **Automation of Queries and Data Loading**

   - Created Bash scripts to automate data insertion from CSV files.
   - Developed scripts to generate results based on predefined queries, enabling automated analysis.

---

## Key Features of the World Cup Database

1. **Entity Relationships**

   - **Teams (`teams`):** Contains unique information for each team, such as its name.
   - **Games (`games`):** Records details of each match, including winning and opposing teams, along with goals scored.

2. **Data Constraints**

   - Consistent use of `SERIAL` for auto-incrementing primary keys.
   - Foreign key relationships ensure referential integrity between teams and games.

3. **Scalable Schema**

   - Tables are designed to accommodate additional data in the future, such as new rounds or teams.

4. **Complex Queries**

   - Queries include detailed results such as:
     - Total goals scored by winning teams.
     - Unique teams that participated in specific rounds.
     - Average goals per match and team, rounded to two decimal places.
     - Names of champions for each tournament.

This project reflects a strong understanding of relational database design principles, practical SQL skills, and the ability to effectively model and query complex relationships.

---

# Students Database | Part 2 | Course #4 - 139 Lessons

## Project Description

In this project, I focused on completing the development of a relational database in **PostgreSQL**, integrating multiple tables using advanced SQL commands, specifically those related to `JOIN`. The main goal was to deepen my understanding of managing relational databases by efficiently querying and relating data from different tables.

---

## What I Learned

1. **Advanced SQL Commands**

   - Using `JOIN` to combine data from multiple tables.
   - Applying operators and functions like `MIN`, `MAX`, `COUNT`, `AVG`, `ROUND`, and `DISTINCT` in queries.
   - Utilizing aliases for tables and columns to improve query readability.

2. **Filtering and Grouping**

   - Implementing `GROUP BY` and `HAVING` to group data and apply specific conditions to groups.
   - Efficient filtering using logical operators like `AND`, `OR`, and `NOT`.

3. **Query Automation**

   - Using Bash to execute SQL queries and dynamically process results.
   - Generating specific reports based on complex queries.

4. **Managing Complex Relationships**

   - Designing and executing queries to analyze relationships between students, majors, and courses.
   - Identifying missing or inconsistent data in the database.

---

## Project Features

1. **Table Relationships**

   - **students:** Stores information about students, including first name, last name, major, and GPA.
   - **majors:** Contains the available academic majors.
   - **courses:** Lists the offered courses.
   - **majors_courses:** Links majors to their required courses.

2. **Data Combination with `JOIN`**

   - Integrating multiple tables to retrieve combined information, such as students with their courses and majors.
   - Using `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, and `FULL JOIN` to meet different query needs.

3. **Validations and Filtering**

   - Filtering data to display only those meeting specific criteria, such as students without a major or unique courses.
   - Identifying duplicate or missing records.

4. **Optimized Queries**

   - Generating reports such as:
     - Majors with enrolled students.
     - Unique courses not being taken.
     - Students meeting specific criteria (e.g., GPA above 3.8).

5. **Automation**

   - Using Bash scripts to execute and process queries automatically.

---

## Project Workflow

1. **Initialization**

   - Importing the `students`, `majors`, `courses`, and `majors_courses` tables into PostgreSQL.
   - Setting up foreign keys and relationships between tables.

2. **Data Combination and Analysis**

   - Integrating tables using `JOIN` to analyze relationships between students, majors, and courses.
   - Using comparison operators and aggregation functions to generate statistics and reports.

3. **Report Generation**

   - Creating specific SQL queries to obtain:
     - Courses with only one student.
     - Students without a major.
     - Average GPA by major.

4. **Optimization and Backup**

   - Using aliases to improve query readability.
   - Generating backups of the database with the new relationships and reports.

This project represents a significant step forward in managing relational databases, diving into advanced SQL concepts, and improving the ability to analyze related data efficiently.

---

# Students Database Initial | Part 1 | Course #4 - 140 Lessons

## Project Description

In this project, I focused on designing and automating the management of a relational database in **PostgreSQL** to record information about students, their majors, and the courses they take. The main goal was to build a Bash script that processed CSV files and automated data insertion, ensuring relationships between tables were properly implemented.

---

## What I Learned

1. **Automation with Bash**

   - Reading and processing data from CSV files using `while` loops and field separators (`IFS`).
   - Executing SQL queries within the script to insert data dynamically.

2. **Dynamic SQL Queries**

   - Designing queries to validate and retrieve information before performing inserts.
   - Handling null values for missing data, ensuring consistency in records.

3. **Database Backups**

   - Using `pg_dump` to create a SQL file that backs up the database structure and complete data.

---

## Project Features

1. **Relational Tables**

   - **students:** Main table storing information about students, including first name, last name, major, and GPA.
   - **majors:** Contains the available academic majors.
   - **courses:** Lists the offered courses.
   - **majors_courses:** Links majors to the required courses.

2. **Process Automation**

   - Reading the `courses.csv` file to insert majors and courses, establishing relationships in `majors_courses`.
   - Reading the `students.csv` file to register students and associate them with their majors and courses.

3. **Validations**

   - Verifying the existence of data before performing inserts.
   - Assigning null values (`NULL`) when no information about majors is found.

4. **Complete Backup**

   - Generating a `students.sql` file to allow reconstruction of the database with its complete information and structure.

---

## Bash Script Workflow (`insert_data.sh`)

1. **Initialization**

   - Truncating existing tables (`students`, `majors`, `courses`, and `majors_courses`) to reset the data.

2. **Course Processing**

   - Inserting majors and courses, validating their prior existence.
   - Linking majors with courses in the `majors_courses` table.

3. **Student Processing**

   - Registering students and associating them with their majors and GPAs.
   - Handling missing major data with null values.

4. **Progress Messages**

   - Printing informative messages for each insertion to monitor progress.

5. **Final Export**

   - Creating the `students.sql` file as a backup and migration tool for the database.

This project represents a significant step forward in managing relational databases and automating tasks with Bash, demonstrating how to integrate fundamental SQL concepts with automated processes for efficient data management.

---

## Learn Bash Scripting by Building Five Programs | Course #3 - 220 Lessons

### Project Description

This project focused on mastering Bash scripting by building **five unique programs** that showcase automation, logic, and terminal command execution. These programs, created over 220 lessons, demonstrate the versatility of Bash scripts in managing tasks and enhancing productivity.

---

## What I Learned

1. **Bash Scripting Basics**

   - Gained a foundational understanding of Bash syntax and structure.
   - Learned how to execute scripts and pass arguments.

2. **Conditional Logic**

   - Utilized `if`, `elif`, and `else` statements for decision-making in scripts.
   - Implemented comparison operators (`-eq`, `-lt`, `-gt`, etc.) and pattern matching with `[[ ... ]]`.

3. **Looping**

   - Mastered `for`, `while`, and `until` loops to iterate through tasks and conditions effectively.

4. **Functions**

   - Encapsulated reusable logic into functions for cleaner, more modular scripts.

5. **Randomization and Arrays**

   - Explored the `RANDOM` variable to generate random numbers.
   - Created and managed arrays to store and access dynamic data.

6. **User Interaction**
   - Integrated user input and validation into scripts for interactive functionality.

---

## Key Features of Each Program

1. **Questionnaire**

   - An interactive script that asks the user for personal information and outputs a summary:
     - **Questions:** Name, location, and favorite coding website.
     - **Key Commands:** `read`, `echo`.
     - **File:** :contentReference[oaicite:0]{index=0}.

2. **Countdown Timer**

   - A script that counts down from a user-defined number to zero with a 1-second pause:
     - **Loop:** `while` loop to decrement values.
     - **Key Feature:** Validation of positive integers.
     - **File:** :contentReference[oaicite:1]{index=1}.

3. **Bingo Number Generator**

   - Generates a random Bingo number (1-75) with its associated letter (`B`, `I`, `N`, `G`, `O`):
     - **Randomization:** Utilizes the `RANDOM` variable for number generation.
     - **Conditional Logic:** Assigns a letter based on ranges using `if-elif` statements.
     - **File:** :contentReference[oaicite:2]{index=2}.

4. **Fortune Teller**

   - An interactive program that generates random fortunes based on user questions:
     - **Array Management:** Stores predefined responses.
     - **Validation:** Ensures user input ends with a question mark (`?`).
     - **File:** :contentReference[oaicite:3]{index=3}.

5. **Master Script**
   - Executes all four scripts sequentially to showcase their functionality:
     - **Script Execution:** Calls each program in a specific order.
     - **File:** :contentReference[oaicite:4]{index=4}.

## Key Takeaways

- **Automation:** Leveraged Bash scripting to automate repetitive tasks and execute complex workflows.
- **User Validation:** Built interactive scripts with input validation to ensure meaningful responses.
- **Structured Programming:** Applied modular programming principles with functions and loops for maintainability.

This project reflects an in-depth understanding of Bash scripting, empowering me to create efficient, automated solutions to everyday tasks.

---

# Universe Database Project - Examination #1

## Project Description

This project focused on designing, creating, and managing a relational database in **PostgreSQL** to model an expansive representation of the universe. The database incorporates galaxies, stars, planets, moons, and exploration missions, each with interconnected relationships and meaningful data points.

The project was developed as part of an exam to evaluate proficiency in relational database design, SQL syntax, and query building, showcasing a comprehensive understanding of complex data relationships.

---

## What I Learned

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

## Key Features of the Universe Database

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

This project reflects a thorough understanding of relational database design principles, practical SQL skills, and the ability to model and query complex relationships effectively.

---

# Mario Database Project | course #2 - 165 Lessons

## Project Description

This project involved designing, creating, and managing a relational database in **PostgreSQL** to model information related to characters, actions, and sounds from the Mario universe. Through this project, I applied fundamental concepts of relational databases and SQL queries to explore and manipulate data effectively.

---

## What I Learned

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

# Bash Project | course #1 - 170 Lessons

## Project Description

The terminal allows you to send text commands to your computer to manipulate the file system, run programs, automate tasks, and much more.

In this **170-lesson** course, I learned the essential terminal commands by creating a website boilerplate structure using only the command line.

---

## What I Learned

1. **Terminal Navigation**

   - Commands to move between directories and list files.

2. **File and Directory Management**

   - Creating, deleting, and manipulating files and folders directly from the terminal.

3. **Task Automation**

   - Using scripts to execute repetitive processes and simplify workflows.

4. **Building a Website Structure**
   - Creating a complete website boilerplate, organizing HTML, CSS, and JavaScript files.

---
