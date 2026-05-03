select 
Ethnicity,
count(`Y-BOCS Score (Obsessions)`) as obsession_score_count,
round(avg(`Y-BOCS Score (Obsessions)`),2) avg_obsession_score

from ocd.ocd_patient_dataset
group by Ethnicity
order by obsession_score_count