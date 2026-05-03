select  
`Obsession Type` as obsession_type,
count(`Obsession Type`) as obsession_type_count,
round(avg(`Y-BOCS Score (Obsessions)`),2) as obsession_type_avg
from ocd.ocd_patient_dataset
group by obsession_type
order by obsession_type_count desc
limit 5 

