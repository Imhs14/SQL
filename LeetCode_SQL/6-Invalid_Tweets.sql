/* 
Question: 1683. Invalid Tweets
Topic: Database
Difficulty: Easy
*/
SELECT tweet_id FROM Tweets
WHERE CHAR_LENGTH(content) > 15;