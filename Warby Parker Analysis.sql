-- 1. What is the number of responses for each survey question?

SELECT question, COUNT(*) AS responses
FROM survey
GROUP BY question;

-- 2. Which question(s) of the quiz have a lower completion rates?
SELECT 
  question,
  COUNT(*) AS responses,
  ROUND(COUNT(*) * 100.0 / (
    SELECT COUNT(*) 
    FROM survey 
    GROUP BY question 
    ORDER BY COUNT(*) DESC 
    LIMIT 1
  ), 2) AS percentage_of_users
FROM survey
GROUP BY question;

-- 3. Let’s find out whether or not users who get more pairs to try on at home will be more likely to make a purchase.
-- 3.1. Creating a unified user funnel table
SELECT 
  quiz.user_id,
  home_try_on.user_id IS NOT NULL,
  home_try_on.number_of_pairs,
  purchase.user_id IS NOT NULL
FROM quiz
LEFT JOIN home_try_on ON quiz.user_id = home_try_on.user_id
LEFT JOIN purchase ON quiz.user_id = purchase.user_id
LIMIT 10;

-- 3.2 Purchase rate by number_of_pairs
SELECT 
  home_try_on.number_of_pairs,
  ROUND((COUNT(DISTINCT purchase.user_id) * 1.0 / COUNT(DISTINCT home_try_on.user_id))*100, 2) AS '% of users who purchased'
FROM home_try_on
LEFT JOIN purchase ON home_try_on.user_id = purchase.user_id
GROUP BY home_try_on.number_of_pairs;

-- 4. Conversion from quiz → home_try_on
SELECT 
  ROUND((COUNT(DISTINCT home_try_on.user_id) * 1.0 / COUNT(DISTINCT quiz.user_id))*100, 2) AS '% quiz_to_homeTryOn'
FROM quiz
LEFT JOIN home_try_on ON quiz.user_id = home_try_on.user_id;

-- 5. Conversion from home_try_on → purchase
SELECT 
  ROUND((COUNT(DISTINCT purchase.user_id) * 1.0 / COUNT(DISTINCT home_try_on.user_id))*100, 2) AS '% homeTryOn_to_purchase'
FROM home_try_on
LEFT JOIN purchase ON home_try_on.user_id = purchase.user_id;














