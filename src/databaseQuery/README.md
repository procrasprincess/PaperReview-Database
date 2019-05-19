## Part 2: From ERD Implementation to Java Application

### Objective
- Create a simple command line, Java application to interact with
your database.  
&nbsp;

### Schema Implementation
<img src="/src/img/schema.jpg" width="25%"> . 
&nbsp;

### Queries Performed
- **Query 1: get a submitted paper’s details by the author’s Primary Key.** 
  - The query return the following data: 
    - Paper.Id
    - Paper.Title
    - Paper.Abstract
    - Author.EmailAddress
    - Author.FirstName
    - Author.LastName

- **Query 2: get all reviews for a paper by the paper’s Id, where the paper was recommended to be
published.**
  - The query returns the following data: 
    - All columns from the Review table.

- **Query 3: get a count of all papers submitted.**

- **Query 4: create a new paper submission.**

- **Query 5: delete the first “Author” row in your Author table by the author’s id.**
  - If received error, print the error to the console with message. 
  - If running with no error, print a running-ok message.
&nbsp; 
  
### How to Run 
- Create database using the .sql files in folder src/db
- In Eclipse (or any java-based/environment IDE), add "mysql-connector-java-5.1.47-bin.jar" file from [databaseQuery/lib](https://github.com/procrasprincess/PaperReview-Database/tree/master/src/databaseQuery/lib) through Java build path
- Run the java source file "dbConnectAndQuery.java" from [databaseQuery/src](https://github.com/procrasprincess/PaperReview-Database/tree/master/src/databaseQuery/src)

