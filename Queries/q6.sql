SELECT meds_id, COUNT(*) as times_administered
FROM administers
GROUP BY meds_id;