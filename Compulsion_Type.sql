select  
`Compulsion Type` as compulsion_type,
count(`Compulsion Type`) as compulsion_type_count,
round(avg(`Y-BOCS Score (Compulsions)`),2) as compulsion_type_avg
from ocd.ocd_patient_dataset
group by compulsion_type
order by compulsion_type_count desc
limit 5 