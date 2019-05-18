# Paper Review Database

## References
- #3.34 on pg.104 of _Foundamentals of Database Systems (7th edition)_ by Elmasri, Navathe.
- Serves as an assignment material by Professor Teresa Brook's Database System Management course (spring'19) at Pace University.

## Description

Consider a `CONFERENCE_REVIEW` database in which researchers submit their research papers for consideration. Reviews by reviewers are recorded for use in the paper selection process. The database system caters primarily to reviewers who record answers to evaluation questions for each paper they review and make recommendations regarding whether to accept or reject the paper. The data requirements are summarized as follows:

- Authors of papers are uniquely identified by e-mail id. First and last names are also recorded.

- Each paper is assigned a unique identifier by the system and is described by a title, abstract, and the name of the electronic file containing the paper.

- A paper may have multiple authors, but one of the authors is designated as the contact author.

- Reviewers of papers are uniquely identified by e-mail address. Each reviewer\'92s first name, last name, phone number, affiliation, and topics of interest are also recorded.

- Each paper is assigned between two and four reviewers. A reviewer rates each paper assigned to him or her on a scale of 1 to 10 in four categories: technical merit, readability, originality, and relevance to the conference. Finally, each reviewer provides an overall recommendation regarding each paper.

- Each review contains two types of written comments: one to be seen by the review committee only and the other as feedback to the author(s).


## Schema
<img src="/src/img/ERD.jpg" width="80%">


## Objectives

- #### Part 1: Implement Database Schema For Conference Review/Paper Reviews) Database 
  - Implement all entities, constraints ( Use SQL queries to create database schema).
  - Populate your database using SQL INSERT statements.
  
- #### Part 2: Create a simple command line, Java application to interact with the database
  - See folder src/databaseQuery for details
