CREATE DATABASE conference_review;
USE conference_review;


CREATE TABLE author (
  EmailAddr varchar(30) NOT NULL PRIMARY KEY,
  FirstName varchar(30),
  LastName varchar(30));


CREATE TABLE paper (
  PaperId int(8) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Title varchar(60),
  Abstract varchar(200),
  FileName varchar(60),
  ContactEmailAddr varchar(30) NOT NULL,
  FOREIGN KEY (ContactEmailAddr) REFERENCES author(EmailAddr));


CREATE TABLE reviewer (
  EmailAddr varchar(30) NOT NULL PRIMARY KEY,
  FirstName varchar(30),
  LastName varchar(30),
  PhoneNum int(15),
  Affiliation varchar(10));


CREATE TABLE review (
  ReviewId int(8) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  PaperId int(8) NOT NULL,
  TechMeritScore int(2) DEFAULT '8',
  ReadabilityScore int(2) DEFAULT '8',
  OriginalityScore int(2) DEFAULT '8',
  RelevanceScore int(2) DEFAULT '8',
  ReviewerEmailAddr varchar(30) NOT NULL, 
  Recommendation varchar(100),
  AuthorFeedback varchar(200),
  CommiteeFeedback varchar(200),
  FOREIGN KEY (PaperId) REFERENCES paper(PaperId),
  FOREIGN KEY (ReviewerEmailAddr) REFERENCES reviewer(EmailAddr));


CREATE TABLE topic (
  TopicId int(8) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  TopicName varchar(30));


CREATE TABLE reviewer_topics (
  EmailAddr varchar(30) NOT NULL,
  TopicId int(8) NOT NULL,
  PRIMARY KEY (EmailAddr,TopicId),
  FOREIGN KEY (EmailAddr) REFERENCES reviewer(EmailAddr),
  FOREIGN KEY (TopicId) REFERENCES topic(TopicId));