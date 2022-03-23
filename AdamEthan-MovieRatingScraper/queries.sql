-- write your queries underneath each number:
 
-- 1. the total number of rows in the database
SELECT COUNT(1)FROM movies_table;
-- 2. show the first 15 rows, but only display 3 columns which are Title, Critic Score, and People/Audience Score
SELECT title, critic_score, people_score FROM movies_Table LIMIT 15;
-- 3. Sorting by Critic Score
SELECT title, critic_score, people_score FROM movies_Table ORDER BY critic_score DESC LIMIT 15;
-- 4. added a random column 
ALTER TABLE movies_table ADD random int NULL;
-- 5. set the value of random column to NULL
UPDATE movies_table SET random=1;
-- 6. Unique values of critic score
SELECT DISTINCT critic_score FROM movies_table;
-- 7.Average of movies' critic scores by genre
SELECT AVG(critic_score), type FROM movies_table GROUP BY type;
-- 8. Average of movies' critic scores by genre with AVG score > 95
SELECT AVG(critic_score), type FROM movies_table GROUP BY type HAVING AVG(critic_score)>95;
-- 9. Average of movies' people scores by genre
SELECT AVG(people_score), type FROM movies_table GROUP BY type;
-- 10. Average of movies' people scores by genre with AVG score > 95
SELECT AVG(people_score), type FROM movies_table GROUP BY type HAVING AVG(people_score)>85;
-- 11. Directors with most movies on this list
SELECT COUNT(index), director FROM movies_table GROUP BY director ORDER BY COUNT(index) DESC;
-- 12. write a comment about your query 12
SELECT AVG(critic_score), director FROM movies_table GROUP BY director;
