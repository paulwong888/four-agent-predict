SELECT 
COUNT(CASE WHEN actual_result = recommendation_1x2 THEN 1 END) AS correct_predictions,
COUNT(*) AS total_predictions,
ROUND(COUNT(CASE WHEN actual_result = recommendation_1x2 THEN 1 END) * 100.0 / COUNT(*), 2) AS accuracy_percentage
FROM predict_result
WHERE actual_result IS NOT NULL AND recommendation_1x2 IS NOT NULL