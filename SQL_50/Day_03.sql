/* Invalid Tweets
You are given a table called Tweets that contains tweet IDs and their content.
A tweet is considered invalid if the number of characters in its content is greater than 15.
Write a SQL query to return the tweet_id of all invalid tweets.
The order of the result does not matter. */

# Write your MySQL query statement below
select tweet_id
from Tweets
where length(content) > 15;

