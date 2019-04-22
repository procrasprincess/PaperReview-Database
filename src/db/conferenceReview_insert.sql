INSERT INTO author (EmailAddr, FirstName, LastName) VALUES
('author1@gmail.com', 'A1', 'L1'),
('author2@gmail.com', 'A2', 'L2'),
('author3@gmail.com', 'A3', 'L3'),
('author4@gmail.com', 'A4', 'L4'),
('author5@gmail.com', 'A5', 'L5');


INSERT INTO paper (PaperId, Title, Abstract, FileName, ContactEmailAddr) VALUES
(1, 'P1', NULL, NULL, 'author1@gmail.com'),
(2, 'P2', NULL, NULL, 'author1@gmail.com'),
(3, 'P3', NULL, NULL, 'author3@gmail.com'),
(4, 'P4', NULL, NULL, 'author4@gmail.com'),
(5, 'P5', NULL, NULL, 'author3@gmail.com');


INSERT INTO reviewer (EmailAddr, FirstName, LastName, PhoneNum, Affiliation) VALUES
('reviewer1@gmail.com', 'RF1', 'RL1', NULL, NULL),
('reviewer2@gmail.com', 'RF2', 'RL2', NULL, NULL),
('reviewer3@gmail.com', 'RF3', 'RL3', NULL, NULL),
('reviewer4@gmail.com', 'RF4', 'RL4', NULL, NULL),
('reviewer5@gmail.com', 'RF5', 'RL5', NULL, NULL);


INSERT INTO review (ReviewId, PaperId, TechMeritScore, ReadabilityScore, OriginalityScore, RelevanceScore, ReviewerEmailAddr, Recommendation, AuthorFeedback, CommiteeFeedback) VALUES
(1, 1, 8, 8, 8, 8, 'reviewer1@gmail.com', NULL, NULL, NULL),
(2, 1, 8, 8, 8, 8, 'reviewer2@gmail.com', NULL, NULL, NULL),
(3, 2, 8, 8, 8, 8, 'reviewer1@gmail.com', NULL, NULL, NULL),
(4, 2, 8, 8, 8, 8, 'reviewer3@gmail.com', NULL, NULL, NULL),
(5, 2, 8, 8, 8, 8, 'reviewer5@gmail.com', NULL, NULL, NULL),
(6, 5, 8, 8, 8, 8, 'reviewer2@gmail.com', NULL, NULL, NULL),
(7, 5, 8, 8, 8, 8, 'reviewer1@gmail.com', NULL, NULL, NULL),
(8, 3, 8, 8, 8, 8, 'reviewer1@gmail.com', NULL, NULL, NULL),
(9, 3, 8, 8, 8, 8, 'reviewer2@gmail.com', NULL, NULL, NULL),
(10, 3, 8, 8, 8, 8, 'reviewer4@gmail.com', NULL, NULL, NULL),
(11, 4, 8, 8, 8, 8, 'reviewer4@gmail.com', NULL, NULL, NULL),
(12, 4, 8, 8, 8, 8, 'reviewer5@gmail.com', NULL, NULL, NULL);


INSERT INTO topic (TopicId, TopicName) VALUES
(1, 'Topic1'),
(2, 'Topic2'),
(3, 'Topic3'),
(4, 'Topic4'),
(5, 'Topic5');


INSERT INTO reviewer_topics (EmailAddr, TopicId) VALUES
('reviewer1@gmail.com', 1),
('reviewer2@gmail.com', 1),
('reviewer3@gmail.com', 1),
('reviewer4@gmail.com', 1),
('reviewer2@gmail.com', 2),
('reviewer1@gmail.com', 3),
('reviewer4@gmail.com', 3),
('reviewer5@gmail.com', 3),
('reviewer2@gmail.com', 5),
('reviewer4@gmail.com', 5);
