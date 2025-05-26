SELECT utm_s.utm_source, ROUND(COUNTIF(l.lead_status = 'Converted') * 1.0 / COUNT(*), 2) AS conversion_rate
FROM `case-study-web-tracking.web_tracking_data.fact_table.` f
JOIN `case-study-web-tracking.web_tracking_data.utm_source_dim.` utm_s
    ON utm_s.utm_source_id = f.utm_source_id
JOIN `case-study-web-tracking.web_tracking_data.user_dim.` u
    ON u.user_id = f.user_id
JOIN `case-study-web-tracking.web_tracking_data.lead_status_dim.` l
    ON l.lead_status_id = u.lead_status_id
GROUP BY utm_s.utm_source
ORDER BY utm_s.utm_source DESC