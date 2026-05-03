select 
DATE_FORMAT(`OCD Diagnosis Date`, '%Y-%m') AS month,
count(`Patient ID`) as Patient_count
from ocd.ocd_patient_dataset

group by month
order by month