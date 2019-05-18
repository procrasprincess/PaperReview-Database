CREATE DATABASE paper_review;
USE paper_review;


CREATE TABLE Author (
  emailAddr varchar(30) NOT NULL PRIMARY KEY,
  firstName varchar(30),
  lastName varchar(30));


CREATE TABLE Paper (
  paperId int(8) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title varchar(60),
  abstract varchar(200),
  fileName varchar(60),
  contactEmailAddr varchar(30) NOT NULL,
  FOREIGN KEY (contactEmailAddr) REFERENCES author(emailAddr));


CREATE TABLE Reviewer (
  emailAddr varchar(30) NOT NULL PRIMARY KEY,
  firstName varchar(30),
  lastName varchar(30),
  phoneNum int(15),
  affiliation varchar(10));


CREATE TABLE Review (
  reviewId int(8) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  paperId int(8) NOT NULL,
  techMeritScore int(2) DEFAULT '8',
  readabilityScore int(2) DEFAULT '8',
  originalityScore int(2) DEFAULT '8',
  relevanceScore int(2) DEFAULT '8',
  reviewerEmailAddr varchar(30) NOT NULL, 
  recommendation varchar(100),
  authorFeedback varchar(200),
  commiteeFeedback varchar(200),
  FOREIGN KEY (paperId) REFERENCES paper(paperId),
  FOREIGN KEY (reviewerEmailAddr) REFERENCES reviewer(emailAddr));


CREATE TABLE Topic (
  topicId int(8) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  topicName varchar(30));


CREATE TABLE reviewerTopics (
  emailAddr varchar(30) NOT NULL,
  topicId int(8) NOT NULL,
  PRIMARY KEY (emailAddr,topicId),
  FOREIGN KEY (emailAddr) REFERENCES reviewer(emailAddr),
  FOREIGN KEY (topicId) REFERENCES topic(topicId));
