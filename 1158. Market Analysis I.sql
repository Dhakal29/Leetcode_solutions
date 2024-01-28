SELECT U.user_id as buyer_id, U.join_date, 
       COUNT(O.buyer_id) AS orders_in_2019
FROM Users U
LEFT JOIN Orders O ON U.user_id = O.buyer_id 
                 AND O.order_date >= '2019-01-01' 
                 AND O.order_date <= '2019-12-31'
GROUP BY U.user_id, U.join_date;

