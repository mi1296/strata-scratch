SELECT 
     Q1.date
    ,(COUNT(Q2.user_id_receiver) / COUNT(Q1.*)::float/1) as percentage_acceptance 
FROM fb_friend_requests Q1
LEFT JOIN fb_friend_requests Q2 
    ON Q1.user_id_sender = Q2.user_id_sender 
    AND Q1.user_id_receiver = Q2.user_id_receiver 
    AND Q2.action = 'accepted' 
WHERE  Q1.action='sent'
GROUP BY Q1.date
ORDER BY Q1.date
