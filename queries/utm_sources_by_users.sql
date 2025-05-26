SELECT utm_s.utm_source, COUNT(u.user_id) AS number_of_users
FROM `case-study-web-tracking.web_tracking_data.fact_table.` f
JOIN `case-study-web-tracking.web_tracking_data.utm_source_dim.` utm_s
    ON utm_s.utm_source_id = f.utm_source_id
JOIN `case-study-web-tracking.web_tracking_data.user_dim.` u
    ON u.user_id = f.user_id
GROUP BY utm_s.utm_source
ORDER BY number_of_users DESC