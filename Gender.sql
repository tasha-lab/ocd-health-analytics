with data as( -- create a temporary table for this data
	select 
	Gender,
	count(`Patient ID`) as patient_count,
	round(avg(`Y-BOCS Score (Obsessions)`),2) as avg_obsession_score

	from ocd.ocd_patient_dataset
	group by Gender)

select 
sum(case when Gender = 'Female' then patient_count else 0 end)as Female_count,
sum(case when Gender = 'Male' then patient_count else 0 end)as Male_count,

round(sum(case when Gender = 'Female' then patient_count else 0 end)/(sum(case when Gender = 'Male' then patient_count else 0 end )+sum(case when Gender = 'Female' then patient_count else 0 end))*100,2) as female_perc,
round(sum(case when Gender = 'Male' then patient_count else 0 end)*100/(sum(case when Gender = 'Female' then patient_count else 0 end) +sum(case when Gender = 'Male' then patient_count else 0 end )),2) as male_perc

from data