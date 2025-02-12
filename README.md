# Relational-Database-Projects

## Project Description

In these courses, I used professional development tools such as Visual Studio Code, PostgreSQL, and the Linux/Unix command line to complete interactive tutorials and build practical projects.

I mastered essential terminal commands, from navigating and manipulating a file system to programming in Bash and performing advanced tasks, optimizing my workflow and automating key processes.

Additionally, I designed and managed relational databases with PostgreSQL, using SQL as the language to interact with these databases. I learned how to structure, query, and automate data management efficiently and professionally.

Finally, I worked with Git, the version control system, which allowed me to manage my code securely and collaborate on projects effectively, consolidating essential skills for any developer.

Below, I will present my learning path, organized from the most recent course to the oldest, showing how I progressively built my knowledge step by step.

---

# Number Guessing Game - Final Exam #5

[View the repository here](https://github.com/RCYGM/number-guessing-game)

This project demonstrates my ability to design, manage, and query a relational database using PostgreSQL and Bash. The goal is to create a program that allows users to guess a randomly generated secret number between 1 and 1000. Throughout this project, my skills in task automation, user interaction, and strong version control practices were evaluated.

---

## **Requirements Completed**

### **Initial Setup**

1. **Creating the Folder and Main File:**
   - The `number_guessing_game` folder was created within the project directory.
   - Inside this folder, the `number_guess.sh` file was created and assigned execution permissions using `chmod +x number_guess.sh`.

2. **Git Repository:**
   - A Git repository was initialized in the project folder using `git init`.

3. **Commit Structure:**
   - Commits were clear and descriptive, following best practices with prefixes like `fix:`, `feat:`, `refactor:`, and `test:`.
   - Examples:
     - `Initial commit`
     - `feat: created script to handle user input and database queries`
     - `fix: corrected SQL syntax for user data insertion`
     - `test: tested number_guess.sh script functionality`

---

### **Database**

1. **Database Creation:**
   - The `number_guess` database was created using PostgreSQL, containing two main tables:
     - **`users`:**
       - `user_id` (primary key).
       - `username` (maximum of 22 characters, unique, and not null).
     - **`game_stats`:**
       - `game_id` (primary key).
       - `user_id` (foreign key referencing the `users` table).
       - `number_of_guesses` (number of attempts made by the user).

2. **Constraint Management:**
   - Constraints such as `UNIQUE` for `username` and `NOT NULL` for critical fields were added.

---

### **Implemented Features**

1. **Random Number Generation:**
   - The program generates a secret number between 1 and 1000 at the start of each session.

2. **User Interaction:**
   - The program prompts for a username and validates if it already exists in the database.
     - If the user exists:
       - It prints:  
         ```
         Welcome back, <username>! You have played <games_played> games, and your best game took <best_game> guesses.
         ```
     - If the user is new:
       - It prints:  
         ```
         Welcome, <username>! It looks like this is your first time here.
         ```

3. **Game Logic:**
   - The user attempts to guess the secret number. Depending on the input:
     - If the number is higher than the secret number:
       ```
       It's lower than that, guess again:
       ```
     - If the number is lower than the secret number:
       ```
       It's higher than that, guess again:
       ```
     - If the input is not an integer:
       ```
       That is not an integer, guess again:
       ```

4. **Final Result:**
   - When the user guesses correctly, the program prints:
     ```
     You guessed it in <number_of_guesses> tries. The secret number was <secret_number>. Nice job!
     ```
   - The game data (user and number of guesses) is saved to the database.

5. **Bash Automation:**
   - A Bash script handles SQL queries, game logic, and user interaction.

---

### **Final Project State**

1. **Complete Functionality:**
   - The script works correctly, covering all the test cases specified.
   - All database and user interactions are handled robustly.

2. **Repository Structure:**
   - The project folder includes:
     - `number_guess.sh` (main script).
     - Necessary files to rebuild the database, such as `number_guess.sql`.

3. **Project Cleanliness:**
   - No uncommitted changes exist in the repository. The working tree is clean.

---

# Periodic Table Database Examination #4

[View the repository here](https://github.com/RCYGM/periodic-table-database-examination)

This project demonstrates my ability to design, manage, and query a relational database representing the periodic table of elements using PostgreSQL and Bash. Through this examination, my skills in database normalization, task automation, and creating user-friendly interactions were evaluated.

---

## **Requirements Completed**

### **Database Modifications**

1. **Renaming Columns:**

   - The `weight` column was renamed to `atomic_mass`.
   - The `melting_point` and `boiling_point` columns were renamed to `melting_point_celsius` and `boiling_point_celsius`, respectively.

2. **Constraints Added:**

   - The `melting_point_celsius` and `boiling_point_celsius` columns were set to `NOT NULL`.
   - `UNIQUE` constraints were added to the `symbol` and `name` columns in the `elements` table.
   - The `symbol` and `name` columns were set to `NOT NULL`.

3. **Relationships Established:**

   - The `atomic_number` column in the `properties` table was set as a foreign key referencing the `atomic_number` column in the `elements` table.

4. **New `types` Table:**

   - A new `types` table was created with the following columns:
     - `type_id` (primary key, integer).
     - `type` (VARCHAR, `NOT NULL`).
   - Three rows were added to the `types` table with the values `metal`, `nonmetal`, and `metalloid`.

5. **Properties Table Updated:**

   - A new `type_id` column was added as a foreign key referencing the `type_id` column in the `types` table, with a `NOT NULL` constraint.
   - Each row in the `properties` table was updated to associate with the correct `type_id` from the `types` table.

6. **Data Corrections:**

   - The first letter of all symbols in the `elements` table was capitalized.
   - Trailing zeros were removed from all values in the `atomic_mass` column. The data type was updated to `DECIMAL` to enable this change.

7. **Elements Added:**

   - Element with atomic number 9:
     - Name: Fluorine
     - Symbol: F
     - Mass: 18.998
     - Melting Point: -220 °C
     - Boiling Point: -188.1 °C
     - Type: nonmetal
   - Element with atomic number 10:
     - Name: Neon
     - Symbol: Ne
     - Mass: 20.18
     - Melting Point: -248.6 °C
     - Boiling Point: -246.1 °C
     - Type: nonmetal

8. **Data Cleanup:**
   - Removed the nonexistent element with `atomic_number = 1000` from the `elements` and `properties` tables.
   - Removed the redundant `type` column from the `properties` table.

---

### **Bash Automation**

1. **Script `element.sh`:**

   - This script accepts an argument (atomic number, symbol, or name) and queries the database to return information about the corresponding element.
   - Output examples:
     - For valid input:
       ```
       The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius.
       ```
     - For invalid input:
       ```
       I could not find that element in the database.
       ```
     - If no argument is provided:
       ```
       Please provide an element as an argument.
       ```

2. **Input Validation:**

   - Handles errors for nonexistent or invalid arguments.
   - Allows searches by:
     - Atomic number (`./element.sh 1`).
     - Symbol (`./element.sh H`).
     - Name (`./element.sh Hydrogen`).

3. **Maintenance:**
   - The `element.sh` file has execution permissions (`chmod +x element.sh`).

---

### **Git and Version Control**

1. **Git Repository:**

   - A Git repository was created in the `periodic_table` folder using `git init`.

2. **Structured Commits:**

   - Clear and descriptive commit messages followed best practices, using prefixes like `fix:`, `feat:`, `refactor:`, `chore:`, and `test:`.
   - Example commits:
     - `Initial commit`
     - `fix: renamed weight to atomic_mass`
     - `feat: added table types and inserted data`
     - `refactor: capitalized symbols and adjusted atomic_mass`
     - `test: tested element.sh script`

3. **Branch Management:**
   - Changes were organized and merged systematically into the main branch.

---

### **Final Project State**

- All tables and data are complete and normalized.
- The Bash script fulfills all required functionalities and handles errors correctly.
- The commit history and repository structure adhere to Git best practices.
- No uncommitted changes exist, and the working tree is clean.

---

# Git by Building an SQL Reference Object | Course #9 - 240 Lessons

[View the repository here](https://github.com/RCYGM/git-project)

This project focused on building an SQL reference object while learning Git. It allowed me to practice and master fundamental Git commands for managing repositories, working with branches, rebasing, and more.

## Features

- I created an SQL reference object stored in JSON format.
- I worked with `.gitignore` and `.env` files to manage sensitive information.
- I applied Git workflows, including commits, branches, merges, stashing, and rebasing.

## What I Improved

- I understood how to initialize a Git repository and track changes.
- I used Git commands to manage branches, merge changes, and resolve conflicts.
- I applied interactive rebases to clean up the commit history.
- I ignored sensitive files like `.env` by using `.gitignore`.
- I properly staged and committed files to maintain a clean and organized history.

## Commands Learned

```bash
# Basic Git Commands
git init                  # Initialize a new Git repository
git status                # View the status of the repository
git add <file_name>       # Stage a specific file
git add .                 # Stage all files
git commit -m "message"   # Commit staged changes with a message
git log                   # View the commit history
git log --oneline         # View a concise version of the commit history

# Working with Branches
git checkout -b <branch_name>   # Create and switch to a new branch
git branch -d <branch_name>     # Delete a branch

# Merging Changes
git merge <branch_name>         # Merge a branch into the current branch

# Stash
git stash                       # Temporarily save changes
git stash list                  # View stashed changes
git stash apply                 # Apply stashed changes without removing them
git stash drop <stash_name>     # Remove a specific stash

# Rebase
git rebase --interactive HEAD~<number_of_commits>   # Start an interactive rebase
git rebase --interactive --root                    # Rebase starting from the initial commit
git rebase main                                    # Align a branch with the main branch
git rebase --continue                              # Continue a rebase after resolving conflicts

# Reset and Revert
git reset HEAD~1                                   # Undo the last commit (mixed reset)
git revert HEAD                                    # Create a commit that undoes the changes of the last commit

# Ignoring Files
# I created a `.gitignore` file to exclude files like `.env` from being tracked by Git.
```

## Viewing the Commit History

To view the commit history, I navigate to the folder containing my Git project (e.g., sql_reference) and use the following commands:

```bash
git log          # View a detailed commit history
git log --oneline  # View a concise commit history
```

## Commit Message Prefixes

### **fix:**

Indicates that the commit resolves an error or bug.  
**Example:**  
`fix: correct typo in variable name`

---

### **feat:**

Indicates that the commit adds a new feature or functionality.  
**Example:**  
`feat: add functionality to display atomic mass`

---

### **refactor:**

Indicates that the commit restructures the code without changing its behavior (technical improvements).  
**Example:**  
`refactor: optimize database query logic`

---

### **chore:**

Indicates administrative or maintenance changes that do not directly affect the production code (e.g., dependency updates).  
**Example:**  
`chore: update dependencies in package.json`

---

### **test:**

Indicates that the commit adds or modifies system tests.  
**Example:**  
`test: add test for element.sh error handling`

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
