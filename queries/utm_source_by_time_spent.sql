SELECT utm_s.utm_source, SUM(f.time_spent_sec) AS total_sec_spent 
        ,ROUND(SUM (f.time_spent_sec)/60, 2) AS total_min_spent
FROM `case-study-web-tracking.web_tracking_data.fact_table.` f
JOIN `case-study-web-tracking.web_tracking_data.utm_source_dim.` utm_s
    ON utm_s.utm_source_id = f.utm_source_id
GROUP BY utm_s.utm_source
ORDER BY total_sec_spent DESC
