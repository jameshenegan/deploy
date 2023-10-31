%let path_to_file = '../data-csv/blsa_open.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE abi2cat_
		0 = 'PAD Absent: ABI greater than or equal to 0.9'
		1 = 'PAD Present: ABI < 0.9'
	;

	VALUE pad_
		0 = 'PAD Absent'
		1 = 'PAD Present'
	;

	VALUE intweightloss_
		1 = 'Intentional Weight Loss'
		0 = 'Unintentional Weight Loss'
	;

	VALUE obesity4cat_
		3 = 'Overweight: 25 <= BMI < 30 kg/m^2'
		2 = 'Normal: 18.5 <= BMI < 25 kg/m^2'
		4 = 'Obese: BMI >= 30 kg/m^2'
		1 = 'Underweight: BMI < 18.5 kg/m^2'
	;

	VALUE obesity6cat_
		3 = 'Overweight: 25 less than or equal to BMI < 30 kg/m^2'
		2 = 'Normal: 18.5 less than or equal to BMI < 25 kg/m^2'
		4 = 'Class 1 Obesity: 30 less than or equal to BMI < 35 kg/m^2'
		5 = 'Class 2 Obesity: 35 less than or equal to BMI < 40 kg/m^2'
		6 = 'Class 3 Obesity: BMI >= 40 kg/m^2'
		1 = 'Underweight: BMI < 18.5 kg/m^2'
	;

	VALUE htn_self_
		1 = 'Self-Reported History of HTN'
		0 = 'No Reported History of HTN'
	;

	VALUE bpjnc7_
		0 = 'Normal'
		1 = 'Pre-HTN'
		2 = 'Stage I HTN'
		3 = 'Stage II HTN'
	;

	VALUE bp2cat_
		0 = 'Normal: SBP < 130 and DBP < 80'
		1 = 'Elevated: SBP greater than or equal to 130 or DBP greater than or equal to 80'
	;

	VALUE htn_
		0 = 'Non-Hypertensive'
		1 = 'Hypertensive'
	;

	VALUE icrose_
		0 = 'Intermittent Claudication Sympoms Absent'
		1 = 'Intermittent Claudication Sympoms Present'
	;

	VALUE cesd01_
		0 = 'Rarely or None of the Time'
		1 = 'Some or Little of the Time'
		2 = 'Moderately or Much of the time'
		3 = 'Most or Almost All the Time'
		5 = 'None'
	;

	VALUE cesd02_
		0 = 'Rarely or None of the Time'
		1 = 'Some or Little of the Time'
		2 = 'Moderately or Much of the time'
		3 = 'Most or Almost All the Time'
		5 = 'None'
	;

	VALUE cesd03_
		0 = 'Rarely or None of the Time'
		1 = 'Some or Little of the Time'
		2 = 'Moderately or Much of the time'
		3 = 'Most or Almost All the Time'
		5 = 'None'
	;

	VALUE cesd04_
		0 = 'Most or Almost All the Time'
		3 = 'Rarely or None of the Time'
		1 = 'Moderately or Much of the time'
		2 = 'Some or Little of the Time'
		9 = 'None'
		5 = 'None'
	;

	VALUE cesd05_
		0 = 'Rarely or None of the Time'
		1 = 'Some or Little of the Time'
		2 = 'Moderately or Much of the time'
		3 = 'Most or Almost All the Time'
		5 = 'None'
		9 = 'None'
	;

	VALUE cesd06_
		0 = 'Rarely or None of the Time'
		1 = 'Some or Little of the Time'
		2 = 'Moderately or Much of the time'
		3 = 'Most or Almost All the Time'
		9 = 'None'
		5 = 'None'
	;

	VALUE cesd07_
		0 = 'Rarely or None of the Time'
		1 = 'Some or Little of the Time'
		2 = 'Moderately or Much of the time'
		3 = 'Most or Almost All the Time'
		5 = 'None'
	;

	VALUE cesd08_
		0 = 'Most or Almost All the Time'
		1 = 'Moderately or Much of the time'
		3 = 'Rarely or None of the Time'
		2 = 'Some or Little of the Time'
		5 = 'None'
	;

	VALUE cesd09_
		0 = 'Rarely or None of the Time'
		1 = 'Some or Little of the Time'
		2 = 'Moderately or Much of the time'
		3 = 'Most or Almost All the Time'
		5 = 'None'
		9 = 'None'
	;

	VALUE cesd10_
		0 = 'Rarely or None of the Time'
		1 = 'Some or Little of the Time'
		2 = 'Moderately or Much of the time'
		3 = 'Most or Almost All the Time'
		5 = 'None'
	;

	VALUE cesd11_
		0 = 'Rarely or None of the Time'
		1 = 'Some or Little of the Time'
		2 = 'Moderately or Much of the time'
		3 = 'Most or Almost All the Time'
		9 = 'None'
		5 = 'None'
	;

	VALUE cesd12_
		0 = 'Most or Almost All the Time'
		1 = 'Moderately or Much of the time'
		2 = 'Some or Little of the Time'
		3 = 'Rarely or None of the Time'
		5 = 'None'
	;

	VALUE cesd13_
		0 = 'Rarely or None of the Time'
		1 = 'Some or Little of the Time'
		2 = 'Moderately or Much of the time'
		3 = 'Most or Almost All the Time'
		9 = 'None'
		5 = 'None'
	;

	VALUE cesd14_
		0 = 'Rarely or None of the Time'
		1 = 'Some or Little of the Time'
		2 = 'Moderately or Much of the time'
		3 = 'Most or Almost All the Time'
		9 = 'None'
		5 = 'None'
	;

	VALUE cesd15_
		0 = 'Rarely or None of the Time'
		1 = 'Some or Little of the Time'
		2 = 'Moderately or Much of the time'
		3 = 'Most or Almost All the Time'
		5 = 'None'
	;

	VALUE cesd16_
		0 = 'Most or Almost All the Time'
		1 = 'Moderately or Much of the time'
		3 = 'Rarely or None of the Time'
		2 = 'Some or Little of the Time'
		5 = 'None'
		4 = 'None'
	;

	VALUE cesd17_
		0 = 'Rarely or None of the Time'
		1 = 'Some or Little of the Time'
		2 = 'Moderately or Much of the time'
		3 = 'Most or Almost All the Time'
		5 = 'None'
	;

	VALUE cesd18_
		0 = 'Rarely or None of the Time'
		1 = 'Some or Little of the Time'
		2 = 'Moderately or Much of the time'
		3 = 'Most or Almost All the Time'
		5 = 'None'
	;

	VALUE cesd19_
		0 = 'Rarely or None of the Time'
		1 = 'Some or Little of the Time'
		2 = 'Moderately or Much of the time'
		3 = 'Most or Almost All the Time'
		5 = 'None'
	;

	VALUE cesd20_
		0 = 'Rarely or None of the Time'
		1 = 'Some or Little of the Time'
		2 = 'Moderately or Much of the time'
		3 = 'Most or Almost All the Time'
		5 = 'None'
	;

	VALUE cesd_der16_
		0 = 'Symptoms Absent'
		1 = 'Symptoms Present'
	;

	VALUE cesd_der20_
		0 = 'Significant Symptoms Absent'
		1 = 'Significant Symptoms Present'
	;

	VALUE depression_
		0 = 'Depression Absent'
		1 = 'Depression Present'
	;

	VALUE cogn_status_
		0 = 'Normal'
		1 = 'MCI'
		2 = 'Dementia'
		3 = 'Impaired Not-MCI/Dem'
	;

	VALUE last_cogn_status_
		0 = 'Normal'
		2 = 'Dementia'
		1 = 'MCI'
		3 = 'Impaired Not-MCI/Dem'
	;

	VALUE last_cogn_status_dementia_
		0 = 'Non-Dementia'
		1 = 'Dementia'
	;

	VALUE last_cogn_status_alzdis_
		0 = 'non-AD'
		1 = 'Dementia due to Alzheimers'
	;

	VALUE last_cogn_status_type1_
		0 = 'Normal'
		2 = 'Probable AD'
		4 = 'Vascular dementia'
		3 = 'Possible AD'
		9 = 'Unspecified'
		5 = 'Consistent w/ AD'
		8 = 'PD'
		14 = 'Dementia w/ lewy body'
		6 = 'Depression'
		17 = 'Vascular without dementia'
		10 = 'Other primary DX'
		18 = 'Other Dementia'
		15 = 'Frontotemporal dementia'
		7 = 'Alcohol abuse'
		1 = 'Definite AD'
		11 = 'Other secondary DX'
		12 = 'Normal pressure hydrocephalus'
		13 = 'Hippocampal sclerosis'
		19 = 'Unknown'
	;

	VALUE last_cogn_status_type2_
		0 = 'Normal'
		1 = 'Definite AD'
		2 = 'Probable AD'
		3 = 'Possible AD'
		4 = 'Vascular dementia'
		5 = 'Consistent w/ AD'
		6 = 'Depression'
		7 = 'Alcohol abuse'
		8 = 'PD'
		9 = 'Unspecified'
		10 = 'Other primary DX'
		11 = 'Other secondary DX'
		12 = 'Normal pressure hydrocephalus'
		13 = 'Hippocampal sclerosis'
		14 = 'Dementia w/ lewy body'
		15 = 'Frontotemporal dementia'
		17 = 'Vascular without dementia'
		18 = 'Other Dementia'
		19 = 'Unknown'
	;

	VALUE last_cogn_status_caseconf_
		0 = 'Participant has never been case-conferenced'
		1 = 'Participant has been case-conferenced'
	;

	VALUE visitmonth_
		6 = 'June'
		8 = 'August'
		3 = 'March'
		5 = 'May'
		7 = 'July'
		10 = 'October'
		4 = 'April'
		9 = 'September'
		11 = 'November'
		1 = 'January'
		2 = 'February'
		12 = 'December'
	;

	VALUE visittype_
		1 = 'Clinical'
		2 = 'Home'
		3 = 'Clinical + Home Split Visit'
	;

	VALUE laststatus_
		2 = 'Deceased'
		1 = 'On Study'
		3 = 'Withdrawn'
		4 = 'Terminated'
	;

	VALUE $sex_
		M = 'Male'
		F = 'Female'
	;

	VALUE male_
		1 = 'Male'
		0 = 'Female'
	;

	VALUE race_
		6 = 'White'
		8 = 'Unknown or not reported'
		3 = 'Black or African American'
		1 = 'Other Asian or Pacific Islander'
		5 = 'Hispanic'
		2 = 'American Indian or Alaskan Native'
		9 = 'Asian'
		7 = 'More than one race'
	;

	VALUE race3cat_
		1 = 'White'
		2 = 'Black or African American'
		3 = 'Other'
	;

	VALUE black_
		0 = 'NonBlack'
		1 = 'Black'
	;

	VALUE ethnicity_
		0 = 'Not reported / Unknown'
		1 = 'Not Hispanic or Latino'
		2 = 'Hispanic or Latino'
	;

	VALUE borninus_
		1 = 'Born In US'
		0 = 'Born Outside US'
	;

	VALUE englishfirstlang_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE maritalstatus_
		1 = 'Married'
		5 = 'Widowed'
		4 = 'Divorced'
		6 = 'Never married'
		2 = 'Living with a partner'
		3 = 'Separated'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE householdsize_
		1 = '1 other'
		0 = 'Lives alone'
		2 = '2 others'
		3 = '3 or more others'
		8 = "Don't know"
		7 = 'Refused'
	;

	VALUE housingtype_
		1 = 'Single family home'
		2 = 'Co-op, condominium, apartment'
		3 = 'Continuing care community'
		4 = 'Assisted living'
		5 = 'Long term care facility'
		8 = "Don't know"
		7 = 'refused'
	;

	VALUE smkstat_
		0 = 'Never smoked'
		1 = 'Former Smoker'
		2 = 'Current Smoker'
	;

	VALUE smokehx_
		0 = 'Never smoked'
		1 = 'Quit 10+ yrs ago'
		3 = 'Current smoker'
		2 = 'Quit <10 yrs ago'
	;

	VALUE smoker_
		0 = 'Non-Smoker'
		1 = 'Smoker'
	;

	VALUE alcoholhx_
		2 = 'Current Drinker'
		0 = 'Non-Drinker'
		1 = 'Former Drinker'
	;

	VALUE drinker_
		1 = 'Drinker'
		0 = 'Non-Drinker'
	;

	VALUE alcohol_
		0 = 'less than one'
		1 = '1-3 drinks'
		2 = '4-7 drinks'
		3 = '8-14 drinks'
		4 = 'more than 14'
	;

	VALUE education_
		18 = "Master's degree"
		16 = 'four year college'
		20 = 'MD or PhD'
		12 = 'high school (or GED equivalent)'
		14 = "two year college / Associate's degree"
		21 = 'multiple graduate degrees'
		19 = 'Law degree'
		0 = 'no formal schooling'
		77 = 'refused'
		88 = 'unknown'
	;

	VALUE educ3cat_
		2 = '>High School'
		1 = 'High School/GED'
		0 = '<High School'
	;

	VALUE educ5cat_
		4 = 'Post college'
		3 = 'College grad'
		1 = 'High school'
		2 = 'Some college'
		0 = 'Less than high school'
	;

	VALUE glucose0_3cat_
		0 = 'Normal Glucose Tolerance'
		1 = 'Pre-Diabetes'
		2 = 'Type 2 Diabetes'
	;

	VALUE glucose120_3cat_
		0 = 'Normal Glucose Tolerance'
		1 = 'Pre-Diabetes'
		2 = 'Type 2 Diabetes'
	;

	VALUE hba1c3cat_
		1 = 'Pre-Diabetes'
		0 = 'Normal Glucose Tolerance'
		2 = 'Type 2 Diabetes'
	;

	VALUE glucose3cat_
		0 = 'Normal Glucose Tolerance'
		1 = 'Pre-Diabetes'
		2 = 'Type 2 Diabetes'
	;

	VALUE diab3cat_
		1 = 'Pre-Diabetes'
		2 = 'Type 2 Diabetes'
		0 = 'Normal Glucose Tolerance'
	;

	VALUE ldl5cat_
		1 = 'Optimal: LDL < 100 mg/dL'
		2 = 'Near/Above Optimal: 100 less than or equal to LDL < 130 mg/dL'
		3 = 'Borderline High: 130 less than or equal to LDL < 160 mg/dL'
		4 = 'High: 160 less than or equal to LDL < 190 mg/dL'
		5 = 'Very High: LDL ≥ 190 mg/dL'
	;

	VALUE hdl3cat_
		3 = 'High: HDL ≥ 60 mg/dL'
		2 = 'Normal: 40 less than or equal to HDL < 60 (males); 50 less than or equal to HDL < 60 mg/dL (females)'
		1 = 'Low: HDL < 40 (males); HDL < 50 mg/dL (females)'
	;

	VALUE trigs4cat_
		1 = 'Normal: Trigs < 150 mg/dL'
		2 = 'Borderline High: 150 <= Trigs < 200 mg/dL'
		3 = 'High: 200 <= Trigs < 500 mg/dL'
		4 = 'Very High: Trigs >= 500 mg/dL'
	;

	VALUE anemia_
		0 = 'Normal Hgb: Hgb greater than or equal to 40 (males); Hgb greater than or equal to 12 g/dL (females)'
		1 = 'Anemia: Hgb < 13 (males); Hgb < 12 g/dL (females)'
	;

	VALUE mi_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hf_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE angina_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE cld_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE asthma_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE liver_dz_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hepatitis_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hiv_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ckd_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE stroke_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE tia_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pn_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE htn_hx_ever_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE dm_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hld_hx_ever_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE vascular_proc_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE cancer_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE arthritis_hx_ever_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE stenosis_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE osteoporosis_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ctd_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE parkinson_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pad_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pvd_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE cataract1_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE cataract2_hx_ever_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE cataract_surg_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ulcer_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE depression_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE covid_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE antacidmed_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE anticoagmed_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE antihistaminemed_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE antipsychoticmeds_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE antiviralabxmeds_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE asthmameds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE bpmeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE cholesterolmeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE chfmeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE cancermeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE copdmeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE dementiameds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE depressionmeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE diabetesmeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE gerdmeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE laxativemeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE aspirinmeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE edmeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE osteoporosismeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE painmeds_file_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE parkinsonmeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE sleepmeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE thyroidmeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE topicalmeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE triglyceridemeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE vitaminmineralmeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE vitamindmeds_file_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE bpmeds_self_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE diabetesmeds_self_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE cholesterolmeds_self_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE depressiontrt_self_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE bpmeds_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE diabetesmeds_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE cholesterolmeds_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE depressiontrt_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE exercise_
		0 = 'Less than 30 minutes of high intensity exercise in the past two weeks'
		3 = 'More than 150 minutes of high intensity exercise in the past two weeks'
		2 = 'Between 75 and 150 minutes of high intensitiy exercise in the past two weeks'
		1 = 'Between 30 and 75 minutes of high intensity exercise in the past two weeks'
	;

	VALUE walkquartermile_
		6 = 'very easy'
		5 = 'somewhat easy'
		0 = 'unable to do'
		4 = 'not so easy'
		3 = 'a little difficulty'
		2 = 'some difficulty'
		1 = 'a lot of difficulty'
	;

	VALUE walkonemile_
		3 = 'very easy'
		0 = 'difficult'
		2 = 'somewhat easy'
		1 = 'not so easy'
	;

	VALUE stairs10_
		6 = 'very easy'
		5 = 'somewhat easy'
		4 = 'not so easy'
		2 = 'some difficulty'
		0 = 'unable to do'
		3 = 'a little difficulty'
		1 = 'a lot of difficulty'
	;

	VALUE stairs20_
		3 = 'very easy'
		2 = 'somewhat easy'
		0 = 'difficult'
		1 = 'not so easy'
	;

	VALUE liftcarry10_
		6 = 'very easy'
		5 = 'somewhat easy'
		3 = 'a little difficulty'
		2 = 'some difficulty'
		0 = 'unable to do'
		4 = 'not so easy'
		1 = 'a lot of difficulty'
	;

	VALUE liftcarry20_
		3 = 'very easy'
		2 = 'somewhat easy'
		0 = 'difficult'
		1 = 'not so easy'
	;

	VALUE did400m_
		1 = 'complete'
		0 = 'started but stopped'
		3 = 'stopped after 2:30 minute walk'
		2 = 'excluded including incomplete 2:30 minute walk'
		4 = 'not done for technical reasons/refused'
	;

	VALUE c400aid_
		0 = '2:30 minute walk without aid'
		1 = 'Aid used for 2:30 minute walk'
	;

	VALUE uw150_
		1 = 'completed'
		3 = 'not done for technical reason/refused'
		0 = 'started but stopped'
		2 = 'excluded'
	;

	VALUE uw150aid_
		0 = 'Usual-paced walk without aid'
		1 = 'Aid used for usual-paced walk'
	;

	VALUE nwalk_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE demo03_
		1 = 'Married'
		5 = 'Widowed'
		4 = 'Divorced'
		6 = 'Never married'
		2 = 'Living with a partner'
		3 = 'Separated'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf01_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know/Do not do"
		7 = 'Refused'
	;

	VALUE pf01a_
		4 = 'Unable to do'
		1 = 'A little'
		2 = 'Some'
		3 = 'A lot'
		8 = "Don't know"
		7 = 'Refused'
	;

	VALUE pf01b_
		3 = 'VeryEasy'
		2 = 'Somewhat easy'
		1 = 'Not so easy'
		8 = "Don't know"
		7 = 'Refused'
	;

	VALUE pf01c_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know/Do not do"
		7 = 'Refused'
	;

	VALUE pf01d_
		3 = 'VeryEasy'
		2 = 'Somewhat easy'
		1 = 'Not so easy'
		8 = "Don't know"
		7 = 'Refused'
	;

	VALUE ap02_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
		7 = 'Refused'
	;

	VALUE ap02g_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
		7 = 'Refused'
	;

	VALUE ap03_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
		7 = 'Refused'
	;

	VALUE ap10_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
		7 = 'Refused'
	;

	VALUE ldcw05_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ldcw01_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE ldcw02_
		0 = 'No'
		2 = 'ECG not done or not available'
		1 = 'Yes'
	;

	VALUE ldcw03_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ldcw04_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ldcw11_
		0 = 'No'
		2 = "Don't know"
		1 = 'Yes'
	;

	VALUE ldcw12_
		0 = 'No'
		2 = "Don't know"
		1 = 'Yes'
	;

	VALUE ldcw13_
		0 = 'No'
		2 = "Don't know"
		1 = 'Yes'
	;

	VALUE ldcw14_
		0 = 'No'
		1 = 'Yes'
		2 = "Don't know"
	;

	VALUE ldcw15_
		0 = 'No'
		1 = 'Yes'
		2 = "Don't know"
	;

	VALUE ldcw16_
		0 = 'No'
		1 = 'Yes'
		2 = "Don't know"
	;

	VALUE mdcw27_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE mdcw27a_
		9 = 'Other'
		99 = 'No time or tester'
		77 = 'Refused'
		1 = 'Exclusion criteria'
		3 = 'Short of Breath'
		5 = 'Knee pain'
		4 = 'Felt faint'
		7 = 'Calf pain'
		6 = 'Hip pain'
		8 = 'Back pain'
		2 = 'Chest pain'
	;

	VALUE ldcw47_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE ldcw47a_
		1 = 'Exclusion criteria'
		10 = 'Did not finish 2:30 walk'
		11 = 'Elevated HR during 2:30 walk'
		13 = 'Had symptoms during 2:30 walk'
		14 = 'Fatigue/Exhaustion/Tiredness'
		2 = 'Chest pain'
		3 = 'Short of Breath'
		4 = 'Felt faint'
		5 = 'Knee pain'
		6 = 'Hip pain'
		7 = 'Calf pain'
		77 = 'Refused'
		8 = 'Back pain'
		9 = 'Other'
		99 = 'No time or tester'
	;

	VALUE mdhx3_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
		7 = 'Refused'
	;

	VALUE mdhx4_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
		7 = 'Refused'
	;

	VALUE mdhx5_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
		7 = 'Refused'
	;

	VALUE mdhx6_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
		7 = 'Refused'
	;

	VALUE mdhx7_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
		7 = 'Refused'
	;

	VALUE mdhx7a_
		1 = 'Yes'
		0 = 'No'
		8 = 'Do not know'
		7 = 'Refused'
	;

	VALUE mdhx12_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
		7 = 'Refused'
	;

	VALUE mdhx15_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
		7 = 'Refused'
	;

	VALUE mdhx15a_
		1 = 'Yes'
		0 = 'No'
		8 = 'Do not know'
		7 = 'Refused'
	;

	VALUE mdhx16_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
		7 = 'Refused'
	;

	VALUE mdhx16a_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
		7 = 'Refused'
	;

	VALUE mdhx18_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
		7 = 'Refused'
	;

	VALUE mdhx18a1_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
	;

	VALUE mdhx18a2_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
	;

	VALUE mdhx18a4_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
	;

	VALUE mdhx19_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
		7 = 'Refused'
	;

	VALUE mdh19a1_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a2_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a3_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a4_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a5_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a6_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a7_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a8_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a9_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a10_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a11_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a12_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a13_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a14_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a15_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a16_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a17_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a18_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdh19a19_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE mdhx24_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
		7 = 'Refused'
	;

	VALUE mdhx25_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
		7 = 'Refused'
	;

	VALUE cvrs6_
		0 = 'No'
		1 = 'Yes'
		8 = 'Do not know'
		7 = 'Refused'
	;

	VALUE pe18_
		0 = 'No rales'
		1 = 'Rales at bases'
		2 = 'Rales more than at bases'
		8 = 'Unknown'
	;

	VALUE pe67f_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE pe67fm_
		555 = '555 - Physical problems'
		999 = '999 - Technical Problems'
		666 = '666 - Mental problems'
		888 = '888 - Refused but could do'
		777 = '777 - Both Physical and Mental problems'
	;

	VALUE pe83_
		1 = 'Trace pitting'
		2 = 'Very obvious pitting'
		8 = 'Unknown'
	;

RUN;

    
DATA WORK.IMPORT;
	%let _EFIERR_ = 0;
	INFILE &path_to_file.
	DELIMITER = ','
	MISSOVER
	DSD
	FIRSTOBS = 2;                

	INFORMAT id_addi BEST32.;
	FORMAT id_addi BEST12.;

	INFORMAT visit BEST32.;
	FORMAT visit BEST12.;

	INFORMAT abi BEST32.;
	FORMAT abi BEST12.;

	INFORMAT abi2cat BEST32.;
	FORMAT abi2cat BEST12.;

	INFORMAT pad BEST32.;
	FORMAT pad BEST12.;

	INFORMAT weight BEST32.;
	FORMAT weight BEST12.;

	INFORMAT weightloss BEST32.;
	FORMAT weightloss BEST12.;

	INFORMAT intweightloss BEST32.;
	FORMAT intweightloss BEST12.;

	INFORMAT height BEST32.;
	FORMAT height BEST12.;

	INFORMAT bsa BEST32.;
	FORMAT bsa BEST12.;

	INFORMAT bmi BEST32.;
	FORMAT bmi BEST12.;

	INFORMAT obesity4cat BEST32.;
	FORMAT obesity4cat BEST12.;

	INFORMAT obesity6cat BEST32.;
	FORMAT obesity6cat BEST12.;

	INFORMAT waistcirc BEST32.;
	FORMAT waistcirc BEST12.;

	INFORMAT lowerwaistcirc BEST32.;
	FORMAT lowerwaistcirc BEST12.;

	INFORMAT waistdiam BEST32.;
	FORMAT waistdiam BEST12.;

	INFORMAT waistdepth BEST32.;
	FORMAT waistdepth BEST12.;

	INFORMAT bodytemp BEST32.;
	FORMAT bodytemp BEST12.;

	INFORMAT hipcirc BEST32.;
	FORMAT hipcirc BEST12.;

	INFORMAT tibialength BEST32.;
	FORMAT tibialength BEST12.;

	INFORMAT bicepskinfold BEST32.;
	FORMAT bicepskinfold BEST12.;

	INFORMAT respirations BEST32.;
	FORMAT respirations BEST12.;

	INFORMAT pulse BEST32.;
	FORMAT pulse BEST12.;

	INFORMAT waisthip BEST32.;
	FORMAT waisthip BEST12.;

	INFORMAT waistheight BEST32.;
	FORMAT waistheight BEST12.;

	INFORMAT htn_self BEST32.;
	FORMAT htn_self BEST12.;

	INFORMAT sbp BEST32.;
	FORMAT sbp BEST12.;

	INFORMAT dbp BEST32.;
	FORMAT dbp BEST12.;

	INFORMAT bpjnc7 BEST32.;
	FORMAT bpjnc7 BEST12.;

	INFORMAT bp2cat BEST32.;
	FORMAT bp2cat BEST12.;

	INFORMAT htn BEST32.;
	FORMAT htn BEST12.;

	INFORMAT icrose BEST32.;
	FORMAT icrose BEST12.;

	INFORMAT cesd01 BEST32.;
	FORMAT cesd01 BEST12.;

	INFORMAT cesd02 BEST32.;
	FORMAT cesd02 BEST12.;

	INFORMAT cesd03 BEST32.;
	FORMAT cesd03 BEST12.;

	INFORMAT cesd04 BEST32.;
	FORMAT cesd04 BEST12.;

	INFORMAT cesd05 BEST32.;
	FORMAT cesd05 BEST12.;

	INFORMAT cesd06 BEST32.;
	FORMAT cesd06 BEST12.;

	INFORMAT cesd07 BEST32.;
	FORMAT cesd07 BEST12.;

	INFORMAT cesd08 BEST32.;
	FORMAT cesd08 BEST12.;

	INFORMAT cesd09 BEST32.;
	FORMAT cesd09 BEST12.;

	INFORMAT cesd10 BEST32.;
	FORMAT cesd10 BEST12.;

	INFORMAT cesd11 BEST32.;
	FORMAT cesd11 BEST12.;

	INFORMAT cesd12 BEST32.;
	FORMAT cesd12 BEST12.;

	INFORMAT cesd13 BEST32.;
	FORMAT cesd13 BEST12.;

	INFORMAT cesd14 BEST32.;
	FORMAT cesd14 BEST12.;

	INFORMAT cesd15 BEST32.;
	FORMAT cesd15 BEST12.;

	INFORMAT cesd16 BEST32.;
	FORMAT cesd16 BEST12.;

	INFORMAT cesd17 BEST32.;
	FORMAT cesd17 BEST12.;

	INFORMAT cesd18 BEST32.;
	FORMAT cesd18 BEST12.;

	INFORMAT cesd19 BEST32.;
	FORMAT cesd19 BEST12.;

	INFORMAT cesd20 BEST32.;
	FORMAT cesd20 BEST12.;

	INFORMAT cesd_der BEST32.;
	FORMAT cesd_der BEST12.;

	INFORMAT cesd_der16 BEST32.;
	FORMAT cesd_der16 BEST12.;

	INFORMAT cesd_der20 BEST32.;
	FORMAT cesd_der20 BEST12.;

	INFORMAT depression BEST32.;
	FORMAT depression BEST12.;

	INFORMAT cogn_status BEST32.;
	FORMAT cogn_status BEST12.;

	INFORMAT last_cogn_status BEST32.;
	FORMAT last_cogn_status BEST12.;

	INFORMAT last_cogn_status_dementia BEST32.;
	FORMAT last_cogn_status_dementia BEST12.;

	INFORMAT last_cogn_status_alzdis BEST32.;
	FORMAT last_cogn_status_alzdis BEST12.;

	INFORMAT last_cogn_status_type1 BEST32.;
	FORMAT last_cogn_status_type1 BEST12.;

	INFORMAT last_cogn_status_type2 BEST32.;
	FORMAT last_cogn_status_type2 BEST12.;

	INFORMAT last_cogn_status_caseconf BEST32.;
	FORMAT last_cogn_status_caseconf BEST12.;

	INFORMAT visitmonth BEST32.;
	FORMAT visitmonth BEST12.;

	INFORMAT visityear BEST32.;
	FORMAT visityear BEST12.;

	INFORMAT daysfromv1 BEST32.;
	FORMAT daysfromv1 BEST12.;

	INFORMAT yearsfromv1 BEST32.;
	FORMAT yearsfromv1 BEST12.;

	INFORMAT yearsfromprevvisit BEST32.;
	FORMAT yearsfromprevvisit BEST12.;

	INFORMAT visitseq BEST32.;
	FORMAT visitseq BEST12.;

	INFORMAT numvisits BEST32.;
	FORMAT numvisits BEST12.;

	INFORMAT visittype BEST32.;
	FORMAT visittype BEST12.;

	INFORMAT laststatus BEST32.;
	FORMAT laststatus BEST12.;

	INFORMAT v1tostatusdays BEST32.;
	FORMAT v1tostatusdays BEST12.;

	INFORMAT v1todeathdays BEST32.;
	FORMAT v1todeathdays BEST12.;

	INFORMAT age BEST32.;
	FORMAT age BEST12.;

	INFORMAT baselineage BEST32.;
	FORMAT baselineage BEST12.;

	INFORMAT sex $1.;
	FORMAT sex $1.;

	INFORMAT male BEST32.;
	FORMAT male BEST12.;

	INFORMAT race BEST32.;
	FORMAT race BEST12.;

	INFORMAT race3cat BEST32.;
	FORMAT race3cat BEST12.;

	INFORMAT black BEST32.;
	FORMAT black BEST12.;

	INFORMAT ethnicity BEST32.;
	FORMAT ethnicity BEST12.;

	INFORMAT borninus BEST32.;
	FORMAT borninus BEST12.;

	INFORMAT englishfirstlang BEST32.;
	FORMAT englishfirstlang BEST12.;

	INFORMAT maritalstatus BEST32.;
	FORMAT maritalstatus BEST12.;

	INFORMAT householdsize BEST32.;
	FORMAT householdsize BEST12.;

	INFORMAT housingtype BEST32.;
	FORMAT housingtype BEST12.;

	INFORMAT smkstat BEST32.;
	FORMAT smkstat BEST12.;

	INFORMAT smokehx BEST32.;
	FORMAT smokehx BEST12.;

	INFORMAT smoker BEST32.;
	FORMAT smoker BEST12.;

	INFORMAT alcoholhx BEST32.;
	FORMAT alcoholhx BEST12.;

	INFORMAT drinker BEST32.;
	FORMAT drinker BEST12.;

	INFORMAT alcohol BEST32.;
	FORMAT alcohol BEST12.;

	INFORMAT edyrsdegree BEST32.;
	FORMAT edyrsdegree BEST12.;

	INFORMAT education BEST32.;
	FORMAT education BEST12.;

	INFORMAT educ3cat BEST32.;
	FORMAT educ3cat BEST12.;

	INFORMAT educ5cat BEST32.;
	FORMAT educ5cat BEST12.;

	INFORMAT gluload BEST32.;
	FORMAT gluload BEST12.;

	INFORMAT sample_dilution $1.;
	FORMAT sample_dilution $1.;

	INFORMAT glucose0_1964 $1.;
	FORMAT glucose0_1964 $1.;

	INFORMAT glucose5_1964 $1.;
	FORMAT glucose5_1964 $1.;

	INFORMAT glucose10_1964 $1.;
	FORMAT glucose10_1964 $1.;

	INFORMAT glucose15_1964 $1.;
	FORMAT glucose15_1964 $1.;

	INFORMAT glucose20_1964 $1.;
	FORMAT glucose20_1964 $1.;

	INFORMAT glucose40_1964 $1.;
	FORMAT glucose40_1964 $1.;

	INFORMAT glucose60_1964 $1.;
	FORMAT glucose60_1964 $1.;

	INFORMAT glucose80_1964 $1.;
	FORMAT glucose80_1964 $1.;

	INFORMAT glucose100_1964 $1.;
	FORMAT glucose100_1964 $1.;

	INFORMAT glucose120_1964 $1.;
	FORMAT glucose120_1964 $1.;

	INFORMAT glucose0_1977 $1.;
	FORMAT glucose0_1977 $1.;

	INFORMAT glucose5_1977 $1.;
	FORMAT glucose5_1977 $1.;

	INFORMAT glucose10_1977 $1.;
	FORMAT glucose10_1977 $1.;

	INFORMAT glucose15_1977 $1.;
	FORMAT glucose15_1977 $1.;

	INFORMAT glucose20_1977 $1.;
	FORMAT glucose20_1977 $1.;

	INFORMAT glucose40_1977 $1.;
	FORMAT glucose40_1977 $1.;

	INFORMAT glucose60_1977 $1.;
	FORMAT glucose60_1977 $1.;

	INFORMAT glucose80_1977 $1.;
	FORMAT glucose80_1977 $1.;

	INFORMAT glucose100_1977 $1.;
	FORMAT glucose100_1977 $1.;

	INFORMAT glucose120_1977 $1.;
	FORMAT glucose120_1977 $1.;

	INFORMAT glucose0_2001 BEST32.;
	FORMAT glucose0_2001 BEST12.;

	INFORMAT glucose5_2001 BEST32.;
	FORMAT glucose5_2001 BEST12.;

	INFORMAT glucose10_2001 BEST32.;
	FORMAT glucose10_2001 BEST12.;

	INFORMAT glucose15_2001 BEST32.;
	FORMAT glucose15_2001 BEST12.;

	INFORMAT glucose20_2001 BEST32.;
	FORMAT glucose20_2001 BEST12.;

	INFORMAT glucose40_2001 BEST32.;
	FORMAT glucose40_2001 BEST12.;

	INFORMAT glucose60_2001 BEST32.;
	FORMAT glucose60_2001 BEST12.;

	INFORMAT glucose80_2001 BEST32.;
	FORMAT glucose80_2001 BEST12.;

	INFORMAT glucose100_2001 BEST32.;
	FORMAT glucose100_2001 BEST12.;

	INFORMAT glucose120_2001 BEST32.;
	FORMAT glucose120_2001 BEST12.;

	INFORMAT glucose0 BEST32.;
	FORMAT glucose0 BEST12.;

	INFORMAT glucose0_3cat BEST32.;
	FORMAT glucose0_3cat BEST12.;

	INFORMAT glucose20 BEST32.;
	FORMAT glucose20 BEST12.;

	INFORMAT glucose40 BEST32.;
	FORMAT glucose40 BEST12.;

	INFORMAT glucose60 BEST32.;
	FORMAT glucose60 BEST12.;

	INFORMAT glucose80 BEST32.;
	FORMAT glucose80 BEST12.;

	INFORMAT glucose100 BEST32.;
	FORMAT glucose100 BEST12.;

	INFORMAT glucose120 BEST32.;
	FORMAT glucose120 BEST12.;

	INFORMAT glucose120_3cat BEST32.;
	FORMAT glucose120_3cat BEST12.;

	INFORMAT insulin0 BEST32.;
	FORMAT insulin0 BEST12.;

	INFORMAT insulin5 BEST32.;
	FORMAT insulin5 BEST12.;

	INFORMAT insulin10 BEST32.;
	FORMAT insulin10 BEST12.;

	INFORMAT insulin15 BEST32.;
	FORMAT insulin15 BEST12.;

	INFORMAT insulin20 BEST32.;
	FORMAT insulin20 BEST12.;

	INFORMAT insulin40 BEST32.;
	FORMAT insulin40 BEST12.;

	INFORMAT insulin60 BEST32.;
	FORMAT insulin60 BEST12.;

	INFORMAT insulin80 BEST32.;
	FORMAT insulin80 BEST12.;

	INFORMAT insulin100 BEST32.;
	FORMAT insulin100 BEST12.;

	INFORMAT insulin120 BEST32.;
	FORMAT insulin120 BEST12.;

	INFORMAT hba1c BEST32.;
	FORMAT hba1c BEST12.;

	INFORMAT hba1c3cat BEST32.;
	FORMAT hba1c3cat BEST12.;

	INFORMAT glucose3cat BEST32.;
	FORMAT glucose3cat BEST12.;

	INFORMAT diab3cat BEST32.;
	FORMAT diab3cat BEST12.;

	INFORMAT ldl BEST32.;
	FORMAT ldl BEST12.;

	INFORMAT ldl5cat BEST32.;
	FORMAT ldl5cat BEST12.;

	INFORMAT hdl BEST32.;
	FORMAT hdl BEST12.;

	INFORMAT hdl3cat BEST32.;
	FORMAT hdl3cat BEST12.;

	INFORMAT trigs BEST32.;
	FORMAT trigs BEST12.;

	INFORMAT trigs4cat BEST32.;
	FORMAT trigs4cat BEST12.;

	INFORMAT hgb BEST32.;
	FORMAT hgb BEST12.;

	INFORMAT anemia BEST32.;
	FORMAT anemia BEST12.;

	INFORMAT mi_hx_ever BEST32.;
	FORMAT mi_hx_ever BEST12.;

	INFORMAT hf_hx_ever BEST32.;
	FORMAT hf_hx_ever BEST12.;

	INFORMAT angina_hx_ever BEST32.;
	FORMAT angina_hx_ever BEST12.;

	INFORMAT cld_hx_ever BEST32.;
	FORMAT cld_hx_ever BEST12.;

	INFORMAT asthma_hx_ever BEST32.;
	FORMAT asthma_hx_ever BEST12.;

	INFORMAT liver_dz_hx_ever BEST32.;
	FORMAT liver_dz_hx_ever BEST12.;

	INFORMAT hepatitis_hx_ever BEST32.;
	FORMAT hepatitis_hx_ever BEST12.;

	INFORMAT hiv_hx_ever BEST32.;
	FORMAT hiv_hx_ever BEST12.;

	INFORMAT ckd_hx_ever BEST32.;
	FORMAT ckd_hx_ever BEST12.;

	INFORMAT stroke_hx_ever BEST32.;
	FORMAT stroke_hx_ever BEST12.;

	INFORMAT tia_hx_ever BEST32.;
	FORMAT tia_hx_ever BEST12.;

	INFORMAT pn_hx_ever BEST32.;
	FORMAT pn_hx_ever BEST12.;

	INFORMAT htn_hx_ever BEST32.;
	FORMAT htn_hx_ever BEST12.;

	INFORMAT dm_hx_ever BEST32.;
	FORMAT dm_hx_ever BEST12.;

	INFORMAT hld_hx_ever BEST32.;
	FORMAT hld_hx_ever BEST12.;

	INFORMAT vascular_proc_hx_ever BEST32.;
	FORMAT vascular_proc_hx_ever BEST12.;

	INFORMAT cancer_hx_ever BEST32.;
	FORMAT cancer_hx_ever BEST12.;

	INFORMAT arthritis_hx_ever BEST32.;
	FORMAT arthritis_hx_ever BEST12.;

	INFORMAT stenosis_hx_ever BEST32.;
	FORMAT stenosis_hx_ever BEST12.;

	INFORMAT osteoporosis_hx_ever BEST32.;
	FORMAT osteoporosis_hx_ever BEST12.;

	INFORMAT ctd_hx_ever BEST32.;
	FORMAT ctd_hx_ever BEST12.;

	INFORMAT parkinson_hx_ever BEST32.;
	FORMAT parkinson_hx_ever BEST12.;

	INFORMAT pad_hx_ever BEST32.;
	FORMAT pad_hx_ever BEST12.;

	INFORMAT pvd_hx_ever BEST32.;
	FORMAT pvd_hx_ever BEST12.;

	INFORMAT cataract1_hx_ever BEST32.;
	FORMAT cataract1_hx_ever BEST12.;

	INFORMAT cataract2_hx_ever BEST32.;
	FORMAT cataract2_hx_ever BEST12.;

	INFORMAT cataract_surg_hx_ever BEST32.;
	FORMAT cataract_surg_hx_ever BEST12.;

	INFORMAT ulcer_hx_ever BEST32.;
	FORMAT ulcer_hx_ever BEST12.;

	INFORMAT depression_hx_ever BEST32.;
	FORMAT depression_hx_ever BEST12.;

	INFORMAT covid_hx_ever BEST32.;
	FORMAT covid_hx_ever BEST12.;

	INFORMAT antacidmed_file BEST32.;
	FORMAT antacidmed_file BEST12.;

	INFORMAT anticoagmed_file BEST32.;
	FORMAT anticoagmed_file BEST12.;

	INFORMAT antihistaminemed_file BEST32.;
	FORMAT antihistaminemed_file BEST12.;

	INFORMAT antipsychoticmeds BEST32.;
	FORMAT antipsychoticmeds BEST12.;

	INFORMAT antiviralabxmeds BEST32.;
	FORMAT antiviralabxmeds BEST12.;

	INFORMAT asthmameds_file BEST32.;
	FORMAT asthmameds_file BEST12.;

	INFORMAT bpmeds_file BEST32.;
	FORMAT bpmeds_file BEST12.;

	INFORMAT cholesterolmeds_file BEST32.;
	FORMAT cholesterolmeds_file BEST12.;

	INFORMAT chfmeds_file BEST32.;
	FORMAT chfmeds_file BEST12.;

	INFORMAT cancermeds_file BEST32.;
	FORMAT cancermeds_file BEST12.;

	INFORMAT copdmeds_file BEST32.;
	FORMAT copdmeds_file BEST12.;

	INFORMAT dementiameds_file BEST32.;
	FORMAT dementiameds_file BEST12.;

	INFORMAT depressionmeds_file BEST32.;
	FORMAT depressionmeds_file BEST12.;

	INFORMAT diabetesmeds_file BEST32.;
	FORMAT diabetesmeds_file BEST12.;

	INFORMAT gerdmeds_file BEST32.;
	FORMAT gerdmeds_file BEST12.;

	INFORMAT laxativemeds_file BEST32.;
	FORMAT laxativemeds_file BEST12.;

	INFORMAT aspirinmeds_file BEST32.;
	FORMAT aspirinmeds_file BEST12.;

	INFORMAT edmeds_file BEST32.;
	FORMAT edmeds_file BEST12.;

	INFORMAT osteoporosismeds_file BEST32.;
	FORMAT osteoporosismeds_file BEST12.;

	INFORMAT painmeds_file BEST32.;
	FORMAT painmeds_file BEST12.;

	INFORMAT parkinsonmeds_file BEST32.;
	FORMAT parkinsonmeds_file BEST12.;

	INFORMAT sleepmeds_file BEST32.;
	FORMAT sleepmeds_file BEST12.;

	INFORMAT thyroidmeds_file BEST32.;
	FORMAT thyroidmeds_file BEST12.;

	INFORMAT topicalmeds_file BEST32.;
	FORMAT topicalmeds_file BEST12.;

	INFORMAT triglyceridemeds_file BEST32.;
	FORMAT triglyceridemeds_file BEST12.;

	INFORMAT vitaminmineralmeds_file BEST32.;
	FORMAT vitaminmineralmeds_file BEST12.;

	INFORMAT vitamindmeds_file BEST32.;
	FORMAT vitamindmeds_file BEST12.;

	INFORMAT bpmeds_self BEST32.;
	FORMAT bpmeds_self BEST12.;

	INFORMAT diabetesmeds_self BEST32.;
	FORMAT diabetesmeds_self BEST12.;

	INFORMAT cholesterolmeds_self BEST32.;
	FORMAT cholesterolmeds_self BEST12.;

	INFORMAT depressiontrt_self BEST32.;
	FORMAT depressiontrt_self BEST12.;

	INFORMAT bpmeds BEST32.;
	FORMAT bpmeds BEST12.;

	INFORMAT diabetesmeds BEST32.;
	FORMAT diabetesmeds BEST12.;

	INFORMAT cholesterolmeds BEST32.;
	FORMAT cholesterolmeds BEST12.;

	INFORMAT depressiontrt BEST32.;
	FORMAT depressiontrt BEST12.;

	INFORMAT hakcal BEST32.;
	FORMAT hakcal BEST12.;

	INFORMAT totkkwk BEST32.;
	FORMAT totkkwk BEST12.;

	INFORMAT totkcal BEST32.;
	FORMAT totkcal BEST12.;

	INFORMAT highxmin BEST32.;
	FORMAT highxmin BEST12.;

	INFORMAT walktime BEST32.;
	FORMAT walktime BEST12.;

	INFORMAT exercise BEST32.;
	FORMAT exercise BEST12.;

	INFORMAT walkquartermile BEST32.;
	FORMAT walkquartermile BEST12.;

	INFORMAT walkonemile BEST32.;
	FORMAT walkonemile BEST12.;

	INFORMAT wkindex BEST32.;
	FORMAT wkindex BEST12.;

	INFORMAT stairs10 BEST32.;
	FORMAT stairs10 BEST12.;

	INFORMAT stairs20 BEST32.;
	FORMAT stairs20 BEST12.;

	INFORMAT stindex BEST32.;
	FORMAT stindex BEST12.;

	INFORMAT liftcarry10 BEST32.;
	FORMAT liftcarry10 BEST12.;

	INFORMAT liftcarry20 BEST32.;
	FORMAT liftcarry20 BEST12.;

	INFORMAT lcindex BEST32.;
	FORMAT lcindex BEST12.;

	INFORMAT handgrip BEST32.;
	FORMAT handgrip BEST12.;

	INFORMAT did400m BEST32.;
	FORMAT did400m BEST12.;

	INFORMAT c400secs BEST32.;
	FORMAT c400secs BEST12.;

	INFORMAT c400pace BEST32.;
	FORMAT c400pace BEST12.;

	INFORMAT c400aid BEST32.;
	FORMAT c400aid BEST12.;

	INFORMAT uw150 BEST32.;
	FORMAT uw150 BEST12.;

	INFORMAT uw150meters BEST32.;
	FORMAT uw150meters BEST12.;

	INFORMAT uw150pace BEST32.;
	FORMAT uw150pace BEST12.;

	INFORMAT uw150aid BEST32.;
	FORMAT uw150aid BEST12.;

	INFORMAT adl_trans BEST32.;
	FORMAT adl_trans BEST12.;

	INFORMAT adlh_trans BEST32.;
	FORMAT adlh_trans BEST12.;

	INFORMAT adl_bathe BEST32.;
	FORMAT adl_bathe BEST12.;

	INFORMAT adlh_bathe BEST32.;
	FORMAT adlh_bathe BEST12.;

	INFORMAT adl_dress BEST32.;
	FORMAT adl_dress BEST12.;

	INFORMAT adlh_dress BEST32.;
	FORMAT adlh_dress BEST12.;

	INFORMAT adl_eat BEST32.;
	FORMAT adl_eat BEST12.;

	INFORMAT adlh_eat BEST32.;
	FORMAT adlh_eat BEST12.;

	INFORMAT adl_toilet BEST32.;
	FORMAT adl_toilet BEST12.;

	INFORMAT adlh_toilet BEST32.;
	FORMAT adlh_toilet BEST12.;

	INFORMAT adl_walk BEST32.;
	FORMAT adl_walk BEST12.;

	INFORMAT adlh_walk BEST32.;
	FORMAT adlh_walk BEST12.;

	INFORMAT adl_total BEST32.;
	FORMAT adl_total BEST12.;

	INFORMAT adl_nmiss BEST32.;
	FORMAT adl_nmiss BEST12.;

	INFORMAT adl_number BEST32.;
	FORMAT adl_number BEST12.;

	INFORMAT iadl_lightwork BEST32.;
	FORMAT iadl_lightwork BEST12.;

	INFORMAT iadlh_lightwork BEST32.;
	FORMAT iadlh_lightwork BEST12.;

	INFORMAT iadl_heavywork BEST32.;
	FORMAT iadl_heavywork BEST12.;

	INFORMAT iadlh_heavywork BEST32.;
	FORMAT iadlh_heavywork BEST12.;

	INFORMAT iadl_meal BEST32.;
	FORMAT iadl_meal BEST12.;

	INFORMAT iadlh_meal BEST32.;
	FORMAT iadlh_meal BEST12.;

	INFORMAT iadl_shop BEST32.;
	FORMAT iadl_shop BEST12.;

	INFORMAT iadlh_shop BEST32.;
	FORMAT iadlh_shop BEST12.;

	INFORMAT iadl_phone BEST32.;
	FORMAT iadl_phone BEST12.;

	INFORMAT iadlh_phone BEST32.;
	FORMAT iadlh_phone BEST12.;

	INFORMAT iadl_meds BEST32.;
	FORMAT iadl_meds BEST12.;

	INFORMAT iadlh_meds BEST32.;
	FORMAT iadlh_meds BEST12.;

	INFORMAT iadl_money BEST32.;
	FORMAT iadl_money BEST12.;

	INFORMAT iadlh_money BEST32.;
	FORMAT iadlh_money BEST12.;

	INFORMAT iadl_drive BEST32.;
	FORMAT iadl_drive BEST12.;

	INFORMAT iadlh_drive BEST32.;
	FORMAT iadlh_drive BEST12.;

	INFORMAT r6mtime BEST32.;
	FORMAT r6mtime BEST12.;

	INFORMAT rapidgaitspeed BEST32.;
	FORMAT rapidgaitspeed BEST12.;

	INFORMAT gaitspeed BEST32.;
	FORMAT gaitspeed BEST12.;

	INFORMAT sppb_gs BEST32.;
	FORMAT sppb_gs BEST12.;

	INFORMAT sppb_cs BEST32.;
	FORMAT sppb_cs BEST12.;

	INFORMAT sppb_sb BEST32.;
	FORMAT sppb_sb BEST12.;

	INFORMAT sppb BEST32.;
	FORMAT sppb BEST12.;

	INFORMAT gs_ratio BEST32.;
	FORMAT gs_ratio BEST12.;

	INFORMAT cs5pace BEST32.;
	FORMAT cs5pace BEST12.;

	INFORMAT cs10pace BEST32.;
	FORMAT cs10pace BEST12.;

	INFORMAT cs_ratio BEST32.;
	FORMAT cs_ratio BEST12.;

	INFORMAT nwalk BEST32.;
	FORMAT nwalk BEST12.;

	INFORMAT nwalktime BEST32.;
	FORMAT nwalktime BEST12.;

	INFORMAT nwspeed BEST32.;
	FORMAT nwspeed BEST12.;

	INFORMAT nw_ratio BEST32.;
	FORMAT nw_ratio BEST12.;

	INFORMAT ststime BEST32.;
	FORMAT ststime BEST12.;

	INFORMAT ftstime BEST32.;
	FORMAT ftstime BEST12.;

	INFORMAT slstime BEST32.;
	FORMAT slstime BEST12.;

	INFORMAT totsbtime BEST32.;
	FORMAT totsbtime BEST12.;

	INFORMAT sb_ratio BEST32.;
	FORMAT sb_ratio BEST12.;

	INFORMAT habcppb BEST32.;
	FORMAT habcppb BEST12.;

	INFORMAT sf12_pcscore BEST32.;
	FORMAT sf12_pcscore BEST12.;

	INFORMAT sf12_mcscore BEST32.;
	FORMAT sf12_mcscore BEST12.;

	INFORMAT nmisssf BEST32.;
	FORMAT nmisssf BEST12.;

	INFORMAT ekg26 BEST32.;
	FORMAT ekg26 BEST12.;

	INFORMAT ekg27 BEST32.;
	FORMAT ekg27 BEST12.;

	INFORMAT ekg28 BEST32.;
	FORMAT ekg28 BEST12.;

	INFORMAT ekg29 BEST32.;
	FORMAT ekg29 BEST12.;

	INFORMAT demo03 BEST32.;
	FORMAT demo03 BEST12.;

	INFORMAT pf01 BEST32.;
	FORMAT pf01 BEST12.;

	INFORMAT pf01a BEST32.;
	FORMAT pf01a BEST12.;

	INFORMAT pf01b BEST32.;
	FORMAT pf01b BEST12.;

	INFORMAT pf01c BEST32.;
	FORMAT pf01c BEST12.;

	INFORMAT pf01d BEST32.;
	FORMAT pf01d BEST12.;

	INFORMAT ap02 BEST32.;
	FORMAT ap02 BEST12.;

	INFORMAT ap02g BEST32.;
	FORMAT ap02g BEST12.;

	INFORMAT ap03 BEST32.;
	FORMAT ap03 BEST12.;

	INFORMAT ap10 BEST32.;
	FORMAT ap10 BEST12.;

	INFORMAT ldcw05 BEST32.;
	FORMAT ldcw05 BEST12.;

	INFORMAT ldcw01 BEST32.;
	FORMAT ldcw01 BEST12.;

	INFORMAT ldcw02 BEST32.;
	FORMAT ldcw02 BEST12.;

	INFORMAT ldcw03 BEST32.;
	FORMAT ldcw03 BEST12.;

	INFORMAT ldcw04 BEST32.;
	FORMAT ldcw04 BEST12.;

	INFORMAT ldcw11 BEST32.;
	FORMAT ldcw11 BEST12.;

	INFORMAT ldcw12 BEST32.;
	FORMAT ldcw12 BEST12.;

	INFORMAT ldcw13 BEST32.;
	FORMAT ldcw13 BEST12.;

	INFORMAT ldcw14 BEST32.;
	FORMAT ldcw14 BEST12.;

	INFORMAT ldcw15 BEST32.;
	FORMAT ldcw15 BEST12.;

	INFORMAT ldcw16 BEST32.;
	FORMAT ldcw16 BEST12.;

	INFORMAT mdcw27 BEST32.;
	FORMAT mdcw27 BEST12.;

	INFORMAT mdcw27a BEST32.;
	FORMAT mdcw27a BEST12.;

	INFORMAT ldcw47 BEST32.;
	FORMAT ldcw47 BEST12.;

	INFORMAT ldcw47a BEST32.;
	FORMAT ldcw47a BEST12.;

	INFORMAT mdhx3 BEST32.;
	FORMAT mdhx3 BEST12.;

	INFORMAT mdhx4 BEST32.;
	FORMAT mdhx4 BEST12.;

	INFORMAT mdhx5 BEST32.;
	FORMAT mdhx5 BEST12.;

	INFORMAT mdhx6 BEST32.;
	FORMAT mdhx6 BEST12.;

	INFORMAT mdhx7 BEST32.;
	FORMAT mdhx7 BEST12.;

	INFORMAT mdhx7a BEST32.;
	FORMAT mdhx7a BEST12.;

	INFORMAT mdhx12 BEST32.;
	FORMAT mdhx12 BEST12.;

	INFORMAT mdhx15 BEST32.;
	FORMAT mdhx15 BEST12.;

	INFORMAT mdhx15a BEST32.;
	FORMAT mdhx15a BEST12.;

	INFORMAT mdhx16 BEST32.;
	FORMAT mdhx16 BEST12.;

	INFORMAT mdhx16a BEST32.;
	FORMAT mdhx16a BEST12.;

	INFORMAT mdhx18 BEST32.;
	FORMAT mdhx18 BEST12.;

	INFORMAT mdhx18a1 BEST32.;
	FORMAT mdhx18a1 BEST12.;

	INFORMAT mdhx18a2 BEST32.;
	FORMAT mdhx18a2 BEST12.;

	INFORMAT mdhx18a4 BEST32.;
	FORMAT mdhx18a4 BEST12.;

	INFORMAT mdhx19 BEST32.;
	FORMAT mdhx19 BEST12.;

	INFORMAT mdh19a1 BEST32.;
	FORMAT mdh19a1 BEST12.;

	INFORMAT mdh19a2 BEST32.;
	FORMAT mdh19a2 BEST12.;

	INFORMAT mdh19a3 BEST32.;
	FORMAT mdh19a3 BEST12.;

	INFORMAT mdh19a4 BEST32.;
	FORMAT mdh19a4 BEST12.;

	INFORMAT mdh19a5 BEST32.;
	FORMAT mdh19a5 BEST12.;

	INFORMAT mdh19a6 BEST32.;
	FORMAT mdh19a6 BEST12.;

	INFORMAT mdh19a7 BEST32.;
	FORMAT mdh19a7 BEST12.;

	INFORMAT mdh19a8 BEST32.;
	FORMAT mdh19a8 BEST12.;

	INFORMAT mdh19a9 BEST32.;
	FORMAT mdh19a9 BEST12.;

	INFORMAT mdh19a10 BEST32.;
	FORMAT mdh19a10 BEST12.;

	INFORMAT mdh19a11 BEST32.;
	FORMAT mdh19a11 BEST12.;

	INFORMAT mdh19a12 BEST32.;
	FORMAT mdh19a12 BEST12.;

	INFORMAT mdh19a13 BEST32.;
	FORMAT mdh19a13 BEST12.;

	INFORMAT mdh19a14 BEST32.;
	FORMAT mdh19a14 BEST12.;

	INFORMAT mdh19a15 BEST32.;
	FORMAT mdh19a15 BEST12.;

	INFORMAT mdh19a16 BEST32.;
	FORMAT mdh19a16 BEST12.;

	INFORMAT mdh19a17 BEST32.;
	FORMAT mdh19a17 BEST12.;

	INFORMAT mdh19a18 BEST32.;
	FORMAT mdh19a18 BEST12.;

	INFORMAT mdh19a19 BEST32.;
	FORMAT mdh19a19 BEST12.;

	INFORMAT mdhx24 BEST32.;
	FORMAT mdhx24 BEST12.;

	INFORMAT mdhx25 BEST32.;
	FORMAT mdhx25 BEST12.;

	INFORMAT cvrs6 BEST32.;
	FORMAT cvrs6 BEST12.;

	INFORMAT pe18 BEST32.;
	FORMAT pe18 BEST12.;

	INFORMAT pe67sr2 BEST32.;
	FORMAT pe67sr2 BEST12.;

	INFORMAT pe67dr2 BEST32.;
	FORMAT pe67dr2 BEST12.;

	INFORMAT pe67sl2 BEST32.;
	FORMAT pe67sl2 BEST12.;

	INFORMAT pe67dl2 BEST32.;
	FORMAT pe67dl2 BEST12.;

	INFORMAT pe67sr3 BEST32.;
	FORMAT pe67sr3 BEST12.;

	INFORMAT pe67dr3 BEST32.;
	FORMAT pe67dr3 BEST12.;

	INFORMAT pe67sl3 BEST32.;
	FORMAT pe67sl3 BEST12.;

	INFORMAT pe67dl3 BEST32.;
	FORMAT pe67dl3 BEST12.;

	INFORMAT pe67hrt BEST32.;
	FORMAT pe67hrt BEST12.;

	INFORMAT pe67f BEST32.;
	FORMAT pe67f BEST12.;

	INFORMAT pe67fm BEST32.;
	FORMAT pe67fm BEST12.;

	INFORMAT pe83 BEST32.;
	FORMAT pe83 BEST12.;

	INFORMAT tssborg BEST32.;
	FORMAT tssborg BEST12.;

	INPUT
		id_addi
		visit
		abi
		abi2cat
		pad
		weight
		weightloss
		intweightloss
		height
		bsa
		bmi
		obesity4cat
		obesity6cat
		waistcirc
		lowerwaistcirc
		waistdiam
		waistdepth
		bodytemp
		hipcirc
		tibialength
		bicepskinfold
		respirations
		pulse
		waisthip
		waistheight
		htn_self
		sbp
		dbp
		bpjnc7
		bp2cat
		htn
		icrose
		cesd01
		cesd02
		cesd03
		cesd04
		cesd05
		cesd06
		cesd07
		cesd08
		cesd09
		cesd10
		cesd11
		cesd12
		cesd13
		cesd14
		cesd15
		cesd16
		cesd17
		cesd18
		cesd19
		cesd20
		cesd_der
		cesd_der16
		cesd_der20
		depression
		cogn_status
		last_cogn_status
		last_cogn_status_dementia
		last_cogn_status_alzdis
		last_cogn_status_type1
		last_cogn_status_type2
		last_cogn_status_caseconf
		visitmonth
		visityear
		daysfromv1
		yearsfromv1
		yearsfromprevvisit
		visitseq
		numvisits
		visittype
		laststatus
		v1tostatusdays
		v1todeathdays
		age
		baselineage
		sex
		male
		race
		race3cat
		black
		ethnicity
		borninus
		englishfirstlang
		maritalstatus
		householdsize
		housingtype
		smkstat
		smokehx
		smoker
		alcoholhx
		drinker
		alcohol
		edyrsdegree
		education
		educ3cat
		educ5cat
		gluload
		sample_dilution
		glucose0_1964
		glucose5_1964
		glucose10_1964
		glucose15_1964
		glucose20_1964
		glucose40_1964
		glucose60_1964
		glucose80_1964
		glucose100_1964
		glucose120_1964
		glucose0_1977
		glucose5_1977
		glucose10_1977
		glucose15_1977
		glucose20_1977
		glucose40_1977
		glucose60_1977
		glucose80_1977
		glucose100_1977
		glucose120_1977
		glucose0_2001
		glucose5_2001
		glucose10_2001
		glucose15_2001
		glucose20_2001
		glucose40_2001
		glucose60_2001
		glucose80_2001
		glucose100_2001
		glucose120_2001
		glucose0
		glucose0_3cat
		glucose20
		glucose40
		glucose60
		glucose80
		glucose100
		glucose120
		glucose120_3cat
		insulin0
		insulin5
		insulin10
		insulin15
		insulin20
		insulin40
		insulin60
		insulin80
		insulin100
		insulin120
		hba1c
		hba1c3cat
		glucose3cat
		diab3cat
		ldl
		ldl5cat
		hdl
		hdl3cat
		trigs
		trigs4cat
		hgb
		anemia
		mi_hx_ever
		hf_hx_ever
		angina_hx_ever
		cld_hx_ever
		asthma_hx_ever
		liver_dz_hx_ever
		hepatitis_hx_ever
		hiv_hx_ever
		ckd_hx_ever
		stroke_hx_ever
		tia_hx_ever
		pn_hx_ever
		htn_hx_ever
		dm_hx_ever
		hld_hx_ever
		vascular_proc_hx_ever
		cancer_hx_ever
		arthritis_hx_ever
		stenosis_hx_ever
		osteoporosis_hx_ever
		ctd_hx_ever
		parkinson_hx_ever
		pad_hx_ever
		pvd_hx_ever
		cataract1_hx_ever
		cataract2_hx_ever
		cataract_surg_hx_ever
		ulcer_hx_ever
		depression_hx_ever
		covid_hx_ever
		antacidmed_file
		anticoagmed_file
		antihistaminemed_file
		antipsychoticmeds
		antiviralabxmeds
		asthmameds_file
		bpmeds_file
		cholesterolmeds_file
		chfmeds_file
		cancermeds_file
		copdmeds_file
		dementiameds_file
		depressionmeds_file
		diabetesmeds_file
		gerdmeds_file
		laxativemeds_file
		aspirinmeds_file
		edmeds_file
		osteoporosismeds_file
		painmeds_file
		parkinsonmeds_file
		sleepmeds_file
		thyroidmeds_file
		topicalmeds_file
		triglyceridemeds_file
		vitaminmineralmeds_file
		vitamindmeds_file
		bpmeds_self
		diabetesmeds_self
		cholesterolmeds_self
		depressiontrt_self
		bpmeds
		diabetesmeds
		cholesterolmeds
		depressiontrt
		hakcal
		totkkwk
		totkcal
		highxmin
		walktime
		exercise
		walkquartermile
		walkonemile
		wkindex
		stairs10
		stairs20
		stindex
		liftcarry10
		liftcarry20
		lcindex
		handgrip
		did400m
		c400secs
		c400pace
		c400aid
		uw150
		uw150meters
		uw150pace
		uw150aid
		adl_trans
		adlh_trans
		adl_bathe
		adlh_bathe
		adl_dress
		adlh_dress
		adl_eat
		adlh_eat
		adl_toilet
		adlh_toilet
		adl_walk
		adlh_walk
		adl_total
		adl_nmiss
		adl_number
		iadl_lightwork
		iadlh_lightwork
		iadl_heavywork
		iadlh_heavywork
		iadl_meal
		iadlh_meal
		iadl_shop
		iadlh_shop
		iadl_phone
		iadlh_phone
		iadl_meds
		iadlh_meds
		iadl_money
		iadlh_money
		iadl_drive
		iadlh_drive
		r6mtime
		rapidgaitspeed
		gaitspeed
		sppb_gs
		sppb_cs
		sppb_sb
		sppb
		gs_ratio
		cs5pace
		cs10pace
		cs_ratio
		nwalk
		nwalktime
		nwspeed
		nw_ratio
		ststime
		ftstime
		slstime
		totsbtime
		sb_ratio
		habcppb
		sf12_pcscore
		sf12_mcscore
		nmisssf
		ekg26
		ekg27
		ekg28
		ekg29
		demo03
		pf01
		pf01a
		pf01b
		pf01c
		pf01d
		ap02
		ap02g
		ap03
		ap10
		ldcw05
		ldcw01
		ldcw02
		ldcw03
		ldcw04
		ldcw11
		ldcw12
		ldcw13
		ldcw14
		ldcw15
		ldcw16
		mdcw27
		mdcw27a
		ldcw47
		ldcw47a
		mdhx3
		mdhx4
		mdhx5
		mdhx6
		mdhx7
		mdhx7a
		mdhx12
		mdhx15
		mdhx15a
		mdhx16
		mdhx16a
		mdhx18
		mdhx18a1
		mdhx18a2
		mdhx18a4
		mdhx19
		mdh19a1
		mdh19a2
		mdh19a3
		mdh19a4
		mdh19a5
		mdh19a6
		mdh19a7
		mdh19a8
		mdh19a9
		mdh19a10
		mdh19a11
		mdh19a12
		mdh19a13
		mdh19a14
		mdh19a15
		mdh19a16
		mdh19a17
		mdh19a18
		mdh19a19
		mdhx24
		mdhx25
		cvrs6
		pe18
		pe67sr2
		pe67dr2
		pe67sl2
		pe67dl2
		pe67sr3
		pe67dr3
		pe67sl3
		pe67dl3
		pe67hrt
		pe67f
		pe67fm
		pe83
		tssborg
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "BLSA Visit Number"
		abi = "Ankle-Brachial Index"
		abi2cat = "Peripheral Artery Disease ABI Classification"
		pad = "Peripheral Artery Disease"
		weight = "Weight (kg)"
		weightloss = "Weight Loss Since Previous Visit (kg)"
		intweightloss = "Intentional Weight Loss Since Previous Visit (kg)"
		height = "Height (cm)"
		bsa = "Body Surface Area using Du Bois formula (m^2)"
		bmi = "Body Mass Index (kg/m^2)"
		obesity4cat = "CDC Obesity Classification (4-category)"
		obesity6cat = "CDC Obesity Classification (6-category)"
		waistcirc = "Upper Waist Circumference (cm)"
		lowerwaistcirc = "Lower Waist Circumference (cm)"
		waistdiam = "Waist Diameter (cm)"
		waistdepth = "Waist Depth (cm)"
		bodytemp = "Oral Body Temperature (Fahrenheit)"
		hipcirc = "Hip (buttocks) Circumference (cm)"
		tibialength = "Right Tibia Length (cm)"
		bicepskinfold = "Right Bicep Skinfold Thickness (cm)"
		respirations = "Respirations (breaths/min)"
		pulse = "Pulse (beats/min)"
		waisthip = "Waist-to-Hip Ratio"
		waistheight = "Waist-to-Height Ratio"
		htn_self = "Hypertension Status (using self-reported physician DX and BP medication use)"
		sbp = "Systolic Blood Pressure (mmHg)"
		dbp = "Diastolic Blood Pressure (mmHg)"
		bpjnc7 = "JNC 7 BP Classification"
		bp2cat = "Elevated BP Classification"
		htn = "Hypertension Status"
		icrose = "Classic Symptoms of Intermittent Claudication as Defined by Rose"
		cesd01 = "I was bothered by things that usually do not bother me"
		cesd02 = "I did not feel like eating; my appetite was poor"
		cesd03 = "I felt that I could not shake off the blues even with the help from my family and friends"
		cesd04 = "I felt that I was just as good as other people"
		cesd05 = "I had trouble keeping my mind on what I was doing"
		cesd06 = "I felt depressed"
		cesd07 = "I felt that everything I did was an effort"
		cesd08 = "I felt hopeful about the future"
		cesd09 = "I thought my life had been a failure"
		cesd10 = "I felt fearful"
		cesd11 = "My sleep was restless"
		cesd12 = "I was happy"
		cesd13 = "I talked less than usual"
		cesd14 = "I felt lonely"
		cesd15 = "People were unfriendly"
		cesd16 = "I enjoyed life"
		cesd17 = "I had crying spells"
		cesd18 = "I felt sad"
		cesd19 = "I felt people disliked me"
		cesd20 = "I could not get going"
		cesd_der = "CESD Depressive Symptoms (CESD) Score"
		cesd_der16 = "CESD Symptoms of Depression (CESD 16+)"
		cesd_der20 = "CESD Significant Symptoms of Depression (CESD 20+)"
		depression = "Depression (Depressive Symptoms or Treatment/Counseling)"
		cogn_status = "4-level Cognitive Status at visit"
		last_cogn_status = "4-level Cognitive Status at last case conference"
		last_cogn_status_dementia = "Dementia diagnosis indicator at last case conference"
		last_cogn_status_alzdis = "Alzheimers Disease (AD) diagnosis at last case conference"
		last_cogn_status_type1 = "19-Level Primary DX Category at last case conference"
		last_cogn_status_type2 = "19-Level Secondary DX Category at last case conference"
		last_cogn_status_caseconf = "Indicator of Case Conferencing for Cognitive Status Determination"
		visitmonth = "Month of Visit"
		visityear = "Year of Visit"
		daysfromv1 = "Days Since Visit 1 Baseline"
		yearsfromv1 = "Years Since Visit 1 Baseline"
		yearsfromprevvisit = "Years Since Previous Visit"
		visitseq = "Sequential Visit Number"
		numvisits = "Number of Visits"
		visittype = "Type of Visit"
		laststatus = "Last Known Status"
		v1tostatusdays = "Days from Visit 1 to Last Identified Study Status Date"
		v1todeathdays = "Days from Visit 1 to Death (if known death)"
		age = "Age at time of visit (years)"
		baselineage = "Age at baseline visit (years)"
		sex = "Sex (M, F)"
		male = "Male Indicator (1=M, 0=F)"
		race = "Race Category (White, Black or African American, American Indian or Alaskan Native, Asian or Pacific Islander, Hispanic, More than one race)"
		race3cat = "Race Category (White, Black, Other)"
		black = "Black Race Indicator (1=Black, 0=Non-Black)"
		ethnicity = "Spanish Hispanic or Latino Ethnicity"
		borninus = "Born in the United States"
		englishfirstlang = "English was First Language"
		maritalstatus = "Marital Status"
		householdsize = "Size of Household"
		housingtype = "Type of Housing"
		smkstat = "Current smoking status (3-level)"
		smokehx = "Smoking history (4-level)"
		smoker = "Current smoking status (2-level)"
		alcoholhx = "Drinking history (4-level)"
		drinker = "Current drinking status (2-level)"
		alcohol = "Drinks per week"
		edyrsdegree = "Highest grade in school completed by the participant defined by final degree"
		education = "Years of education as defined by final degree"
		educ3cat = "Education Category (<HS, HS, HS+)"
		educ5cat = "Education Category (5-Level)"
		gluload = "Sugar concentration for OGTT (grams)"
		sample_dilution = "Diluation factor"
		glucose0_1964 = "Fasting Glucose 1964-1977 (mg/dl)"
		glucose5_1964 = "OGTT Glucose at 5-mins 1964-1977 (mg/dl)"
		glucose10_1964 = "OGTT Glucose at 10-mins 1964-1977 (mg/dl)"
		glucose15_1964 = "OGTT Glucose at 15-mins 1964-1977 (mg/dl)"
		glucose20_1964 = "OGTT Glucose at 20-mins 1964-1977 (mg/dl)"
		glucose40_1964 = "OGTT Glucose at 40-mins 1964-1977 (mg/dl)"
		glucose60_1964 = "OGTT Glucose at 60-mins 1964-1977 (mg/dl)"
		glucose80_1964 = "OGTT Glucose at 80-mins 1964-1977 (mg/dl)"
		glucose100_1964 = "OGTT Glucose at 100-mins 1964-1977 (mg/dl)"
		glucose120_1964 = "OGTT Glucose at 120-mins 1964-1977 (mg/dl)"
		glucose0_1977 = "Fasting Glucose 1977-2000 (mg/dl)"
		glucose5_1977 = "OGTT Glucose at 5-mins 1977-2000 (mg/dl)"
		glucose10_1977 = "OGTT Glucose at 10-mins 1977-2000 (mg/dl)"
		glucose15_1977 = "OGTT Glucose at 15-mins 1977-2000 (mg/dl)"
		glucose20_1977 = "OGTT Glucose at 20-mins 1977-2000 (mg/dl)"
		glucose40_1977 = "OGTT Glucose at 40-mins 1977-2000 (mg/dl)"
		glucose60_1977 = "OGTT Glucose at 60-mins 1977-2000 (mg/dl)"
		glucose80_1977 = "OGTT Glucose at 80-mins 1977-2000 (mg/dl)"
		glucose100_1977 = "OGTT Glucose at 100-mins 1977-2000 (mg/dl)"
		glucose120_1977 = "OGTT Glucose at 120-mins 1977-2000 (mg/dl)"
		glucose0_2001 = "Fasting Glucose 2001-current (mg/dl)"
		glucose5_2001 = "OGTT Glucose at 5-mins 2001-current (mg/dl)"
		glucose10_2001 = "OGTT Glucose at 10-mins 2001-current (mg/dl)"
		glucose15_2001 = "OGTT Glucose at 15-mins 2001-current (mg/dl)"
		glucose20_2001 = "OGTT Glucose at 20-mins 2001-current (mg/dl)"
		glucose40_2001 = "OGTT Glucose at 40-mins 2001-current (mg/dl)"
		glucose60_2001 = "OGTT Glucose at 60-mins 2001-current (mg/dl)"
		glucose80_2001 = "OGTT Glucose at 80-mins 2001-current (mg/dl)"
		glucose100_2001 = "OGTT Glucose at 100-mins 2001-current (mg/dl)"
		glucose120_2001 = "OGTT Glucose at 120-mins 2001-current (mg/dl)"
		glucose0 = "Fasting Glucose calibrated (mg/dl)"
		glucose0_3cat = "OGTT Glucose Categorization at 0-mins, calibrated (Norm, At Risk, Diab)"
		glucose20 = "OGTT Glucose at 20-mins calibrated (mg/dl)"
		glucose40 = "OGTT Glucose at 40-mins calibrated (mg/dl)"
		glucose60 = "OGTT Glucose at 60-mins calibrated (mg/dl)"
		glucose80 = "OGTT Glucose at 80-mins calibrated (mg/dl)"
		glucose100 = "OGTT Glucose at 100-mins calibrated (mg/dl)"
		glucose120 = "OGTT Glucose at 120-mins calibrated (mg/dl)"
		glucose120_3cat = "OGTT Glucose Categorization at 120-mins, calibrated (Norm, At Risk, Diab)"
		insulin0 = "OGTT Insulin at 0-mins (碌U/ml)"
		insulin5 = "OGTT Insulin at 5-mins (碌U/ml)"
		insulin10 = "OGTT Insulin at 10-mins (碌U/ml)"
		insulin15 = "OGTT Insulin at 15-mins (碌U/ml)"
		insulin20 = "OGTT Insulin at 20-mins (碌U/ml)"
		insulin40 = "OGTT Insulin at 40-mins (碌U/ml)"
		insulin60 = "OGTT Insulin at 60-mins (碌U/ml)"
		insulin80 = "OGTT Insulin at 80-mins (碌U/ml)"
		insulin100 = "OGTT Insulin at 100-mins (碌U/ml)"
		insulin120 = "OGTT Insulin at 120-mins (碌U/ml)"
		hba1c = "Plasma Hemoglobin HbA1c (%)"
		hba1c3cat = "Plasma Hemoglobin HbA1c (%) Categorization (Norm, At Risk, Diab)"
		glucose3cat = "Diabetes Categorization (Norm, At Risk, Diab)"
		diab3cat = "Diabetes Categorization (Norm, At Risk, Diab)"
		ldl = "LDL Cholesterol (mg/dL)"
		ldl5cat = "ATP III Fasting LDL Categorization"
		hdl = "HDL Cholesterol (mg/dL)"
		hdl3cat = "ATP III Fasting HDL Categorization"
		trigs = "Triglycerides (mg/dL)"
		trigs4cat = "ATP III Fasting Triglyceride Categorization"
		hgb = "Hemoglobin (g/dL)"
		anemia = "Anemia Classification"
		mi_hx_ever = "Self-Reported History of MI"
		hf_hx_ever = "Self-Reported History of HF"
		angina_hx_ever = "Self-Reported History of Angina"
		cld_hx_ever = "Self-Reported History of CLD"
		asthma_hx_ever = "Self-Reported History of Asthma"
		liver_dz_hx_ever = "Self-Reported History of Liver Disease"
		hepatitis_hx_ever = "Self-Reported History of Hepatitis"
		hiv_hx_ever = "Self-Reported History of HIV/AIDS"
		ckd_hx_ever = "Self-Reported History of CKD"
		stroke_hx_ever = "Self-Reported History of Stroke"
		tia_hx_ever = "Self-Reported History of TIA"
		pn_hx_ever = "Self-Reported History of PN"
		htn_hx_ever = "Self-Reported History of HTN"
		dm_hx_ever = "Self-Reported History of DM"
		hld_hx_ever = "Self-Reported History of HLD"
		vascular_proc_hx_ever = "Self-Reported History of Vascular Procedures"
		cancer_hx_ever = "Self-Reported History of Cancer"
		arthritis_hx_ever = "Self-Reported History of Arthritis"
		stenosis_hx_ever = "Self-Reported History of Spinal Stenosis"
		osteoporosis_hx_ever = "Self-Reported History of Osteoporosis"
		ctd_hx_ever = "Self-Reported History of CTD"
		parkinson_hx_ever = "Self-Reported History of Parkinson"
		pad_hx_ever = "Self-Reported History of PAD"
		pvd_hx_ever = "Self-Reported History of Varicose Veins"
		cataract1_hx_ever = "Self-Reported History of Cataracts"
		cataract2_hx_ever = "Self-Reported History of Cataracts (both eyes)"
		cataract_surg_hx_ever = "Self-Reported History of Cataract Procedures"
		ulcer_hx_ever = "Self-Reported History of Ulcer"
		depression_hx_ever = "Self-Reported History of Depression"
		covid_hx_ever = "Self-Reported History of COVID-19"
		antacidmed_file = "Antacid Medication Brought to Clinic"
		anticoagmed_file = "Anticoagulant Medication Brought to Clinic"
		antihistaminemed_file = "Antihistamine Medication Brought to Clinic"
		antipsychoticmeds = "Antipsychotic Medication Brought to Clinic"
		antiviralabxmeds = "Antivirals and Antibiotics Medication Brought to Clinic"
		asthmameds_file = "Asthma Medication Brought to Clinic"
		bpmeds_file = "BP Medication Brought to Clinic"
		cholesterolmeds_file = "Cholesterol Medication Brought to Clinic"
		chfmeds_file = "Congestive Heart Failure Medication Brought to Clinic"
		cancermeds_file = "Chemotherapy Medication Brought to Clinic"
		copdmeds_file = "Chronic Obstructive Pulmonary Disease Medication Brought to Clinic"
		dementiameds_file = "Dementia Medication Brought to Clinic"
		depressionmeds_file = "Depression Medication Brought to Clinic"
		diabetesmeds_file = "Diabetes Medication Brought to Clinic"
		gerdmeds_file = "Gastro-Esophageal Reflux Medication Brought to Clinic"
		laxativemeds_file = "Laxatives Medication Brought to Clinic"
		aspirinmeds_file = "Low Dose Aspirin Brought to Clinic"
		edmeds_file = "Male Impotence Medication Brought to Clinic"
		osteoporosismeds_file = "Osteoporosis Medication Brought to Clinic"
		painmeds_file = "Pain Medication Brought to Clinic"
		parkinsonmeds_file = "Parkinson's Medication Brought to Clinic"
		sleepmeds_file = "Sleep Medication Brought to Clinic"
		thyroidmeds_file = "Thyroid Hormone Medication Brought to Clinic"
		topicalmeds_file = "Topical Medication Brought to Clinic"
		triglyceridemeds_file = "Triglycerides Medication Brought to Clinic"
		vitaminmineralmeds_file = "Vitamin or Mineral Medication Brought to Clinic"
		vitamindmeds_file = "Vitamin D Medication Brought to Clinic"
		bpmeds_self = "Self-Reported BP Medication Use"
		diabetesmeds_self = "Self-Reported Glucose Medication Use (Y/N)"
		cholesterolmeds_self = "Self-Reported Cholesterol Medication Use (Y/N)"
		depressiontrt_self = "Self-Reported Teatment/Medication and/or Counselling for Depression"
		bpmeds = "BP Medication Use"
		diabetesmeds = "Glucose Medication Use (Y/N)"
		cholesterolmeds = "Cholesterol Medication Use (Y/N)"
		depressiontrt = "Teatment/Medication and/or Counselling for Depression"
		hakcal = "calories expended in exercise related activity - Harvard alumni scale"
		totkkwk = "calories per kg expended in all activity"
		totkcal = "calories expended in all activity"
		highxmin = "minutes of vigorous actvity per week including brisk walking"
		walktime = "minutes of any walking per week"
		exercise = "exercise level 0=lt 30 mins and 3=gt 150 mins per week"
		walkquartermile = "Difficulty/ease walking 1/4 mile"
		walkonemile = "Difficulty/ease walking 1 mile if no difficulty walking 1/4 mile"
		wkindex = "Walking ability summary score"
		stairs10 = "Difficulty/ease walking up 10 steps"
		stairs20 = "Difficulty/ease walking up 20 steps if no difficulty walking up 10 steps"
		stindex = "Climbing stairs ability summary score"
		liftcarry10 = "Difficulty/ease lifting/carrying 10 lbs"
		liftcarry20 = "Difficulty/ease lifting/carrying 20 lbs if no difficulty lifting/carrying 10 lbs"
		lcindex = "Lifting/carrying ability summary score"
		handgrip = "Maximum hand grip (kg)"
		did400m = "400 meter walk - completion flag"
		c400secs = "400 meter walk - time (seconds)"
		c400pace = "400 meter walk - pace (m/s)"
		c400aid = "400 meter walk - walking aid use"
		uw150 = "Usual pace walk - completion flag"
		uw150meters = "Usual pace walk - distance (meters)"
		uw150pace = "Usual pace walk - pace (m/s)"
		uw150aid = "Usual pace walk - walking aid use"
		adl_trans = "ADL - any difficulty getting in and out of bed or chair"
		adlh_trans = "ADL - need special equipment getting in and out of bed or chair"
		adl_bathe = "ADL - any difficulty bathing or showering"
		adlh_bathe = "ADL - need special equipment bathing or showering"
		adl_dress = "ADL - any difficulty dressing"
		adlh_dress = "ADL - need special equipment dressing"
		adl_eat = "ADL - any difficulty eating"
		adlh_eat = "ADL - need special equipment eating"
		adl_toilet = "ADL - any difficulty using the toilet"
		adlh_toilet = "ADL - need special equipment using the toilet"
		adl_walk = "ADL - any difficulty walking across a small room"
		adlh_walk = "ADL - need special equipment walking across a small room"
		adl_total = "ADL - total score"
		adl_nmiss = "ADL - number missing"
		adl_number = "ADL - number with any difficulty (if all non-missing)"
		iadl_lightwork = "IADL - any difficulty doing light housework"
		iadlh_lightwork = "IADL - do not do light housework for health-related reasons"
		iadl_heavywork = "IADL - any difficulty doing heavy housework"
		iadlh_heavywork = "IADL - do not do heavy housework for health-related reasons"
		iadl_meal = "IADL - any difficulty preparing own meals"
		iadlh_meal = "IADL - do not prepare meals for health-related reasons"
		iadl_shop = "IADL - any difficulty shopping for personal items"
		iadlh_shop = "IADL - do not shop for health-related reasons"
		iadl_phone = "IADL - any difficulty using the telephone"
		iadlh_phone = "IADL - do not use the telephone for health-related reasons"
		iadl_meds = "IADL - any difficulty taking medication"
		iadlh_meds = "IADL - do not take medication for health-related reasons"
		iadl_money = "IADL - any difficulty managing money"
		iadlh_money = "IADL - do not manage money for health-related reasons"
		iadl_drive = "IADL - any difficulty driving"
		iadlh_drive = "IADL - primary reason do not drive"
		r6mtime = "6 meter walk time (sec)"
		rapidgaitspeed = "Rapid gait speed (m/s)"
		gaitspeed = "Usual gait speed (m/s)"
		sppb_gs = "SPPB - gait speed score"
		sppb_cs = "SPPB - chair stand score"
		sppb_sb = "SPPB - standing balance score"
		sppb = "SPPB - score"
		gs_ratio = "Expanded SPPB - Gait Speed Ratio"
		cs5pace = "SPPB - 5 chair stand speed"
		cs10pace = "SPPB - 10 chair stand speed"
		cs_ratio = "Expanded SPPB - Chair Stand Ratio"
		nwalk = "Successfully completed narrow walk"
		nwalktime = "Narrow walk time in seconds"
		nwspeed = "Narrow walk speed (m/s)"
		nw_ratio = "Expanded SPPB - Narrow Walk Ratio"
		ststime = "Semi-tandem stand time in seconds"
		ftstime = "Full-tandem time in seconds"
		slstime = "Single leg stand time in seconds"
		totsbtime = "Total standing balance time (seconds)"
		sb_ratio = "Expanded SPPB - Standing Balance Ratio"
		habcppb = "Expanded SPPB - score"
		sf12_pcscore = "Physical health composite score"
		sf12_mcscore = "Mental health composite score"
		nmisssf = "Number of missing components in SF12"
		ekg26 = "EKG26"
		ekg27 = "EKG27"
		ekg28 = "EKG28"
		ekg29 = "EKG29"
		demo03 = "Current marital status"
		pf01 = "Do you have difficulty walking a quarter mile due to health"
		pf01a = "How much difficulty walking a quarter mile"
		pf01b = "How easy is it to walk quarter mile"
		pf01c = "Do you have difficulty walking one mile due to health"
		pf01d = "How easy is it to walk one mile"
		ap02 = "Have you had pain or aching most days for at least one month in or around either knee"
		ap02g = "Most days in past 12 mo did you have stiffness in either of your knees"
		ap03 = "Have you had pain most days for at least one month in or around either hip"
		ap10 = "In the past 12 months have you had pain lasting at least one month in your feet toes or ankles"
		ldcw05 = "Need to use walking aid"
		ldcw01 = "Was the participant able to complete the fast paced 6 meter walk with or without a walking aid"
		ldcw02 = "Are there abnormal ECG hardcopy references"
		ldcw03 = "Was resting heart rate greater than 120 bpm"
		ldcw04 = "Was Systolic BP greater than 180 or diastolic pressure greater than 110"
		ldcw11 = "Had heart attack within past 3 mo"
		ldcw12 = "Had angioplasty within past 3 mo"
		ldcw13 = "Had heart surgery within past 3 mo"
		ldcw14 = "Had new or worsening within past 3 mo"
		ldcw15 = "Had new or worsening angina within past 3 mo"
		ldcw16 = "Had new or worsening shortness of breath within past 3 mo"
		mdcw27 = "Did participant complete 230 walk"
		mdcw27a = "Usual Pace reason not done"
		ldcw47 = "Did participant complete 400 meter walk"
		ldcw47a = "400 meter reason not done"
		mdhx3 = "Has doctor ever said you had a heart attack or myocardial infarction"
		mdhx4 = "Has doctor ever said you had a heart failure or CHF"
		mdhx5 = "Has doctor ever said you had angina chest pain due to heart or coronary artery disease"
		mdhx6 = "Has doctor ever said you had chronic bronchitis emphysema or COPD"
		mdhx7 = "Has doctor ever said you had asthma"
		mdhx7a = "If yes do you still have asthma"
		mdhx12 = "Has doctor ever said you had a stroke mini stroke or slight stroke"
		mdhx15 = "Has doctor ever said you had high blood pressure or hypertension"
		mdhx15a = "If yes are you currently taking prescribed medications for BP"
		mdhx16 = "Has doctor ever said you had diabetes glucose intolerance or high blood sugar"
		mdhx16a = "If yes are you currently taking diabetes medication"
		mdhx18 = "Had bypass surgery carotid endarterectomy or aortic aneurysm repair"
		mdhx18a1 = "Coronary bypass surgery heart bypass or CABG"
		mdhx18a2 = "Angioplasty of coronary arteries"
		mdhx18a4 = "Angioplasty on leg or femoral arteries"
		mdhx19 = "Ever told you had cancer or malignant growth"
		mdh19a1 = "Bladder cancer YN"
		mdh19a2 = "Brain cancer YN"
		mdh19a3 = "Breast cancer YN"
		mdh19a4 = "Cervical cancer YN"
		mdh19a5 = "Colon Rectal cancer YN"
		mdh19a6 = "Endometrial cancer YN"
		mdh19a7 = "Leukemia cancer YN"
		mdh19a8 = "Liver cancer YN"
		mdh19a9 = "Lung cancer YN"
		mdh19a10 = "Lymphoma cancer YN"
		mdh19a11 = "Melanoma cancer YN"
		mdh19a12 = "Ovarian cancer YN"
		mdh19a13 = "Pancreatic cancer YN"
		mdh19a14 = "Prostate cancer YN"
		mdh19a15 = "Skin Basal cancer YN"
		mdh19a16 = "Skin Squamous cancer YN"
		mdh19a17 = "Stomach cancer YN"
		mdh19a18 = "Thyroid cancer YN"
		mdh19a19 = "Other cancer YN"
		mdhx24 = "Has doctor ever said you had Parkinsons disease"
		mdhx25 = "Has doctor ever said you had Intermittent Claudication or PAD"
		cvrs6 = "In the past 12 months have you had to sleep on 2 or more pillows to help you breathe"
		pe18 = "Rales"
		pe67sr2 = "BP right systolic measurement 2"
		pe67dr2 = "BP right diastolic measurement 2"
		pe67sl2 = "BP left systolic measurement 2"
		pe67dl2 = "BP left diastolic measurement 2"
		pe67sr3 = "BP right systolic measurement 3"
		pe67dr3 = "BP right diastolic measurement 3"
		pe67sl3 = "BP left systolic measurement 3"
		pe67dl3 = "BP left diastolic measurement 3"
		pe67hrt = "Heart rate"
		pe67f = "Supine blood pressure completed"
		pe67fm = "Supine blood pressure reason not done"
		pe83 = "Edema score"
		tssborg = "Borg score for Steady Stage"
	;
	FORMAT
		abi2cat abi2cat_.
		pad pad_.
		intweightloss intweightloss_.
		obesity4cat obesity4cat_.
		obesity6cat obesity6cat_.
		htn_self htn_self_.
		bpjnc7 bpjnc7_.
		bp2cat bp2cat_.
		htn htn_.
		icrose icrose_.
		cesd01 cesd01_.
		cesd02 cesd02_.
		cesd03 cesd03_.
		cesd04 cesd04_.
		cesd05 cesd05_.
		cesd06 cesd06_.
		cesd07 cesd07_.
		cesd08 cesd08_.
		cesd09 cesd09_.
		cesd10 cesd10_.
		cesd11 cesd11_.
		cesd12 cesd12_.
		cesd13 cesd13_.
		cesd14 cesd14_.
		cesd15 cesd15_.
		cesd16 cesd16_.
		cesd17 cesd17_.
		cesd18 cesd18_.
		cesd19 cesd19_.
		cesd20 cesd20_.
		cesd_der16 cesd_der16_.
		cesd_der20 cesd_der20_.
		depression depression_.
		cogn_status cogn_status_.
		last_cogn_status last_cogn_status_.
		last_cogn_status_dementia last_cogn_status_dementia_.
		last_cogn_status_alzdis last_cogn_status_alzdis_.
		last_cogn_status_type1 last_cogn_status_type1_.
		last_cogn_status_type2 last_cogn_status_type2_.
		last_cogn_status_caseconf last_cogn_status_caseconf_.
		visitmonth visitmonth_.
		visittype visittype_.
		laststatus laststatus_.
		male male_.
		race race_.
		race3cat race3cat_.
		black black_.
		ethnicity ethnicity_.
		borninus borninus_.
		englishfirstlang englishfirstlang_.
		maritalstatus maritalstatus_.
		householdsize householdsize_.
		housingtype housingtype_.
		smkstat smkstat_.
		smokehx smokehx_.
		smoker smoker_.
		alcoholhx alcoholhx_.
		drinker drinker_.
		alcohol alcohol_.
		education education_.
		educ3cat educ3cat_.
		educ5cat educ5cat_.
		glucose0_3cat glucose0_3cat_.
		glucose120_3cat glucose120_3cat_.
		hba1c3cat hba1c3cat_.
		glucose3cat glucose3cat_.
		diab3cat diab3cat_.
		ldl5cat ldl5cat_.
		hdl3cat hdl3cat_.
		trigs4cat trigs4cat_.
		anemia anemia_.
		mi_hx_ever mi_hx_ever_.
		hf_hx_ever hf_hx_ever_.
		angina_hx_ever angina_hx_ever_.
		cld_hx_ever cld_hx_ever_.
		asthma_hx_ever asthma_hx_ever_.
		liver_dz_hx_ever liver_dz_hx_ever_.
		hepatitis_hx_ever hepatitis_hx_ever_.
		hiv_hx_ever hiv_hx_ever_.
		ckd_hx_ever ckd_hx_ever_.
		stroke_hx_ever stroke_hx_ever_.
		tia_hx_ever tia_hx_ever_.
		pn_hx_ever pn_hx_ever_.
		htn_hx_ever htn_hx_ever_.
		dm_hx_ever dm_hx_ever_.
		hld_hx_ever hld_hx_ever_.
		vascular_proc_hx_ever vascular_proc_hx_ever_.
		cancer_hx_ever cancer_hx_ever_.
		arthritis_hx_ever arthritis_hx_ever_.
		stenosis_hx_ever stenosis_hx_ever_.
		osteoporosis_hx_ever osteoporosis_hx_ever_.
		ctd_hx_ever ctd_hx_ever_.
		parkinson_hx_ever parkinson_hx_ever_.
		pad_hx_ever pad_hx_ever_.
		pvd_hx_ever pvd_hx_ever_.
		cataract1_hx_ever cataract1_hx_ever_.
		cataract2_hx_ever cataract2_hx_ever_.
		cataract_surg_hx_ever cataract_surg_hx_ever_.
		ulcer_hx_ever ulcer_hx_ever_.
		depression_hx_ever depression_hx_ever_.
		covid_hx_ever covid_hx_ever_.
		antacidmed_file antacidmed_file_.
		anticoagmed_file anticoagmed_file_.
		antihistaminemed_file antihistaminemed_file_.
		antipsychoticmeds antipsychoticmeds_.
		antiviralabxmeds antiviralabxmeds_.
		asthmameds_file asthmameds_file_.
		bpmeds_file bpmeds_file_.
		cholesterolmeds_file cholesterolmeds_file_.
		chfmeds_file chfmeds_file_.
		cancermeds_file cancermeds_file_.
		copdmeds_file copdmeds_file_.
		dementiameds_file dementiameds_file_.
		depressionmeds_file depressionmeds_file_.
		diabetesmeds_file diabetesmeds_file_.
		gerdmeds_file gerdmeds_file_.
		laxativemeds_file laxativemeds_file_.
		aspirinmeds_file aspirinmeds_file_.
		edmeds_file edmeds_file_.
		osteoporosismeds_file osteoporosismeds_file_.
		painmeds_file painmeds_file_.
		parkinsonmeds_file parkinsonmeds_file_.
		sleepmeds_file sleepmeds_file_.
		thyroidmeds_file thyroidmeds_file_.
		topicalmeds_file topicalmeds_file_.
		triglyceridemeds_file triglyceridemeds_file_.
		vitaminmineralmeds_file vitaminmineralmeds_file_.
		vitamindmeds_file vitamindmeds_file_.
		bpmeds_self bpmeds_self_.
		diabetesmeds_self diabetesmeds_self_.
		cholesterolmeds_self cholesterolmeds_self_.
		depressiontrt_self depressiontrt_self_.
		bpmeds bpmeds_.
		diabetesmeds diabetesmeds_.
		cholesterolmeds cholesterolmeds_.
		depressiontrt depressiontrt_.
		exercise exercise_.
		walkquartermile walkquartermile_.
		walkonemile walkonemile_.
		stairs10 stairs10_.
		stairs20 stairs20_.
		liftcarry10 liftcarry10_.
		liftcarry20 liftcarry20_.
		did400m did400m_.
		c400aid c400aid_.
		uw150 uw150_.
		uw150aid uw150aid_.
		nwalk nwalk_.
		demo03 demo03_.
		pf01 pf01_.
		pf01a pf01a_.
		pf01b pf01b_.
		pf01c pf01c_.
		pf01d pf01d_.
		ap02 ap02_.
		ap02g ap02g_.
		ap03 ap03_.
		ap10 ap10_.
		ldcw05 ldcw05_.
		ldcw01 ldcw01_.
		ldcw02 ldcw02_.
		ldcw03 ldcw03_.
		ldcw04 ldcw04_.
		ldcw11 ldcw11_.
		ldcw12 ldcw12_.
		ldcw13 ldcw13_.
		ldcw14 ldcw14_.
		ldcw15 ldcw15_.
		ldcw16 ldcw16_.
		mdcw27 mdcw27_.
		mdcw27a mdcw27a_.
		ldcw47 ldcw47_.
		ldcw47a ldcw47a_.
		mdhx3 mdhx3_.
		mdhx4 mdhx4_.
		mdhx5 mdhx5_.
		mdhx6 mdhx6_.
		mdhx7 mdhx7_.
		mdhx7a mdhx7a_.
		mdhx12 mdhx12_.
		mdhx15 mdhx15_.
		mdhx15a mdhx15a_.
		mdhx16 mdhx16_.
		mdhx16a mdhx16a_.
		mdhx18 mdhx18_.
		mdhx18a1 mdhx18a1_.
		mdhx18a2 mdhx18a2_.
		mdhx18a4 mdhx18a4_.
		mdhx19 mdhx19_.
		mdh19a1 mdh19a1_.
		mdh19a2 mdh19a2_.
		mdh19a3 mdh19a3_.
		mdh19a4 mdh19a4_.
		mdh19a5 mdh19a5_.
		mdh19a6 mdh19a6_.
		mdh19a7 mdh19a7_.
		mdh19a8 mdh19a8_.
		mdh19a9 mdh19a9_.
		mdh19a10 mdh19a10_.
		mdh19a11 mdh19a11_.
		mdh19a12 mdh19a12_.
		mdh19a13 mdh19a13_.
		mdh19a14 mdh19a14_.
		mdh19a15 mdh19a15_.
		mdh19a16 mdh19a16_.
		mdh19a17 mdh19a17_.
		mdh19a18 mdh19a18_.
		mdh19a19 mdh19a19_.
		mdhx24 mdhx24_.
		mdhx25 mdhx25_.
		cvrs6 cvrs6_.
		pe18 pe18_.
		pe67f pe67f_.
		pe67fm pe67fm_.
		pe83 pe83_.
		sex $sex_.
	;
RUN;


        DATA blsa_open;
            SET WORK.IMPORT;
        RUN;
        