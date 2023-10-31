#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/blsa_open.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="BLSA Visit Number"
label(data$abi)="Ankle-Brachial Index"
label(data$abi2cat)="Peripheral Artery Disease ABI Classification"
label(data$pad)="Peripheral Artery Disease"
label(data$weight)="Weight (kg)"
label(data$weightloss)="Weight Loss Since Previous Visit (kg)"
label(data$intweightloss)="Intentional Weight Loss Since Previous Visit (kg)"
label(data$height)="Height (cm)"
label(data$bsa)="Body Surface Area using Du Bois formula (m^2)"
label(data$bmi)="Body Mass Index (kg/m^2)"
label(data$obesity4cat)="CDC Obesity Classification (4-category)"
label(data$obesity6cat)="CDC Obesity Classification (6-category)"
label(data$waistcirc)="Upper Waist Circumference (cm)"
label(data$lowerwaistcirc)="Lower Waist Circumference (cm)"
label(data$waistdiam)="Waist Diameter (cm)"
label(data$waistdepth)="Waist Depth (cm)"
label(data$bodytemp)="Oral Body Temperature (Fahrenheit)"
label(data$hipcirc)="Hip (buttocks) Circumference (cm)"
label(data$tibialength)="Right Tibia Length (cm)"
label(data$bicepskinfold)="Right Bicep Skinfold Thickness (cm)"
label(data$respirations)="Respirations (breaths/min)"
label(data$pulse)="Pulse (beats/min)"
label(data$waisthip)="Waist-to-Hip Ratio"
label(data$waistheight)="Waist-to-Height Ratio"
label(data$htn_self)="Hypertension Status (using self-reported physician DX and BP medication use)"
label(data$sbp)="Systolic Blood Pressure (mmHg)"
label(data$dbp)="Diastolic Blood Pressure (mmHg)"
label(data$bpjnc7)="JNC 7 BP Classification"
label(data$bp2cat)="Elevated BP Classification"
label(data$htn)="Hypertension Status"
label(data$icrose)="Classic Symptoms of Intermittent Claudication as Defined by Rose"
label(data$cesd01)="I was bothered by things that usually do not bother me"
label(data$cesd02)="I did not feel like eating; my appetite was poor"
label(data$cesd03)="I felt that I could not shake off the blues even with the help from my family and friends"
label(data$cesd04)="I felt that I was just as good as other people"
label(data$cesd05)="I had trouble keeping my mind on what I was doing"
label(data$cesd06)="I felt depressed"
label(data$cesd07)="I felt that everything I did was an effort"
label(data$cesd08)="I felt hopeful about the future"
label(data$cesd09)="I thought my life had been a failure"
label(data$cesd10)="I felt fearful"
label(data$cesd11)="My sleep was restless"
label(data$cesd12)="I was happy"
label(data$cesd13)="I talked less than usual"
label(data$cesd14)="I felt lonely"
label(data$cesd15)="People were unfriendly"
label(data$cesd16)="I enjoyed life"
label(data$cesd17)="I had crying spells"
label(data$cesd18)="I felt sad"
label(data$cesd19)="I felt people disliked me"
label(data$cesd20)="I could not get going"
label(data$cesd_der)="CESD Depressive Symptoms (CESD) Score"
label(data$cesd_der16)="CESD Symptoms of Depression (CESD 16+)"
label(data$cesd_der20)="CESD Significant Symptoms of Depression (CESD 20+)"
label(data$depression)="Depression (Depressive Symptoms or Treatment/Counseling)"
label(data$cogn_status)="4-level Cognitive Status at visit"
label(data$last_cogn_status)="4-level Cognitive Status at last case conference"
label(data$last_cogn_status_dementia)="Dementia diagnosis indicator at last case conference"
label(data$last_cogn_status_alzdis)="Alzheimers Disease (AD) diagnosis at last case conference"
label(data$last_cogn_status_type1)="19-Level Primary DX Category at last case conference"
label(data$last_cogn_status_type2)="19-Level Secondary DX Category at last case conference"
label(data$last_cogn_status_caseconf)="Indicator of Case Conferencing for Cognitive Status Determination"
label(data$visitmonth)="Month of Visit"
label(data$visityear)="Year of Visit"
label(data$daysfromv1)="Days Since Visit 1 Baseline"
label(data$yearsfromv1)="Years Since Visit 1 Baseline"
label(data$yearsfromprevvisit)="Years Since Previous Visit"
label(data$visitseq)="Sequential Visit Number"
label(data$numvisits)="Number of Visits"
label(data$visittype)="Type of Visit"
label(data$laststatus)="Last Known Status"
label(data$v1tostatusdays)="Days from Visit 1 to Last Identified Study Status Date"
label(data$v1todeathdays)="Days from Visit 1 to Death (if known death)"
label(data$age)="Age at time of visit (years)"
label(data$baselineage)="Age at baseline visit (years)"
label(data$sex)="Sex (M, F)"
label(data$male)="Male Indicator (1=M, 0=F)"
label(data$race)="Race Category (White, Black or African American, American Indian or Alaskan Native, Asian or Pacific Islander, Hispanic, More than one race)"
label(data$race3cat)="Race Category (White, Black, Other)"
label(data$black)="Black Race Indicator (1=Black, 0=Non-Black)"
label(data$ethnicity)="Spanish Hispanic or Latino Ethnicity"
label(data$borninus)="Born in the United States"
label(data$englishfirstlang)="English was First Language"
label(data$maritalstatus)="Marital Status"
label(data$householdsize)="Size of Household"
label(data$housingtype)="Type of Housing"
label(data$smkstat)="Current smoking status (3-level)"
label(data$smokehx)="Smoking history (4-level)"
label(data$smoker)="Current smoking status (2-level)"
label(data$alcoholhx)="Drinking history (4-level)"
label(data$drinker)="Current drinking status (2-level)"
label(data$alcohol)="Drinks per week"
label(data$edyrsdegree)="Highest grade in school completed by the participant defined by final degree"
label(data$education)="Years of education as defined by final degree"
label(data$educ3cat)="Education Category (<HS, HS, HS+)"
label(data$educ5cat)="Education Category (5-Level)"
label(data$gluload)="Sugar concentration for OGTT (grams)"
label(data$sample_dilution)="Diluation factor"
label(data$glucose0_1964)="Fasting Glucose 1964-1977 (mg/dl)"
label(data$glucose5_1964)="OGTT Glucose at 5-mins 1964-1977 (mg/dl)"
label(data$glucose10_1964)="OGTT Glucose at 10-mins 1964-1977 (mg/dl)"
label(data$glucose15_1964)="OGTT Glucose at 15-mins 1964-1977 (mg/dl)"
label(data$glucose20_1964)="OGTT Glucose at 20-mins 1964-1977 (mg/dl)"
label(data$glucose40_1964)="OGTT Glucose at 40-mins 1964-1977 (mg/dl)"
label(data$glucose60_1964)="OGTT Glucose at 60-mins 1964-1977 (mg/dl)"
label(data$glucose80_1964)="OGTT Glucose at 80-mins 1964-1977 (mg/dl)"
label(data$glucose100_1964)="OGTT Glucose at 100-mins 1964-1977 (mg/dl)"
label(data$glucose120_1964)="OGTT Glucose at 120-mins 1964-1977 (mg/dl)"
label(data$glucose0_1977)="Fasting Glucose 1977-2000 (mg/dl)"
label(data$glucose5_1977)="OGTT Glucose at 5-mins 1977-2000 (mg/dl)"
label(data$glucose10_1977)="OGTT Glucose at 10-mins 1977-2000 (mg/dl)"
label(data$glucose15_1977)="OGTT Glucose at 15-mins 1977-2000 (mg/dl)"
label(data$glucose20_1977)="OGTT Glucose at 20-mins 1977-2000 (mg/dl)"
label(data$glucose40_1977)="OGTT Glucose at 40-mins 1977-2000 (mg/dl)"
label(data$glucose60_1977)="OGTT Glucose at 60-mins 1977-2000 (mg/dl)"
label(data$glucose80_1977)="OGTT Glucose at 80-mins 1977-2000 (mg/dl)"
label(data$glucose100_1977)="OGTT Glucose at 100-mins 1977-2000 (mg/dl)"
label(data$glucose120_1977)="OGTT Glucose at 120-mins 1977-2000 (mg/dl)"
label(data$glucose0_2001)="Fasting Glucose 2001-current (mg/dl)"
label(data$glucose5_2001)="OGTT Glucose at 5-mins 2001-current (mg/dl)"
label(data$glucose10_2001)="OGTT Glucose at 10-mins 2001-current (mg/dl)"
label(data$glucose15_2001)="OGTT Glucose at 15-mins 2001-current (mg/dl)"
label(data$glucose20_2001)="OGTT Glucose at 20-mins 2001-current (mg/dl)"
label(data$glucose40_2001)="OGTT Glucose at 40-mins 2001-current (mg/dl)"
label(data$glucose60_2001)="OGTT Glucose at 60-mins 2001-current (mg/dl)"
label(data$glucose80_2001)="OGTT Glucose at 80-mins 2001-current (mg/dl)"
label(data$glucose100_2001)="OGTT Glucose at 100-mins 2001-current (mg/dl)"
label(data$glucose120_2001)="OGTT Glucose at 120-mins 2001-current (mg/dl)"
label(data$glucose0)="Fasting Glucose calibrated (mg/dl)"
label(data$glucose0_3cat)="OGTT Glucose Categorization at 0-mins, calibrated (Norm, At Risk, Diab)"
label(data$glucose20)="OGTT Glucose at 20-mins calibrated (mg/dl)"
label(data$glucose40)="OGTT Glucose at 40-mins calibrated (mg/dl)"
label(data$glucose60)="OGTT Glucose at 60-mins calibrated (mg/dl)"
label(data$glucose80)="OGTT Glucose at 80-mins calibrated (mg/dl)"
label(data$glucose100)="OGTT Glucose at 100-mins calibrated (mg/dl)"
label(data$glucose120)="OGTT Glucose at 120-mins calibrated (mg/dl)"
label(data$glucose120_3cat)="OGTT Glucose Categorization at 120-mins, calibrated (Norm, At Risk, Diab)"
label(data$insulin0)="OGTT Insulin at 0-mins (碌U/ml)"
label(data$insulin5)="OGTT Insulin at 5-mins (碌U/ml)"
label(data$insulin10)="OGTT Insulin at 10-mins (碌U/ml)"
label(data$insulin15)="OGTT Insulin at 15-mins (碌U/ml)"
label(data$insulin20)="OGTT Insulin at 20-mins (碌U/ml)"
label(data$insulin40)="OGTT Insulin at 40-mins (碌U/ml)"
label(data$insulin60)="OGTT Insulin at 60-mins (碌U/ml)"
label(data$insulin80)="OGTT Insulin at 80-mins (碌U/ml)"
label(data$insulin100)="OGTT Insulin at 100-mins (碌U/ml)"
label(data$insulin120)="OGTT Insulin at 120-mins (碌U/ml)"
label(data$hba1c)="Plasma Hemoglobin HbA1c (%)"
label(data$hba1c3cat)="Plasma Hemoglobin HbA1c (%) Categorization (Norm, At Risk, Diab)"
label(data$glucose3cat)="Diabetes Categorization (Norm, At Risk, Diab)"
label(data$diab3cat)="Diabetes Categorization (Norm, At Risk, Diab)"
label(data$ldl)="LDL Cholesterol (mg/dL)"
label(data$ldl5cat)="ATP III Fasting LDL Categorization"
label(data$hdl)="HDL Cholesterol (mg/dL)"
label(data$hdl3cat)="ATP III Fasting HDL Categorization"
label(data$trigs)="Triglycerides (mg/dL)"
label(data$trigs4cat)="ATP III Fasting Triglyceride Categorization"
label(data$hgb)="Hemoglobin (g/dL)"
label(data$anemia)="Anemia Classification"
label(data$mi_hx_ever)="Self-Reported History of MI"
label(data$hf_hx_ever)="Self-Reported History of HF"
label(data$angina_hx_ever)="Self-Reported History of Angina"
label(data$cld_hx_ever)="Self-Reported History of CLD"
label(data$asthma_hx_ever)="Self-Reported History of Asthma"
label(data$liver_dz_hx_ever)="Self-Reported History of Liver Disease"
label(data$hepatitis_hx_ever)="Self-Reported History of Hepatitis"
label(data$hiv_hx_ever)="Self-Reported History of HIV/AIDS"
label(data$ckd_hx_ever)="Self-Reported History of CKD"
label(data$stroke_hx_ever)="Self-Reported History of Stroke"
label(data$tia_hx_ever)="Self-Reported History of TIA"
label(data$pn_hx_ever)="Self-Reported History of PN"
label(data$htn_hx_ever)="Self-Reported History of HTN"
label(data$dm_hx_ever)="Self-Reported History of DM"
label(data$hld_hx_ever)="Self-Reported History of HLD"
label(data$vascular_proc_hx_ever)="Self-Reported History of Vascular Procedures"
label(data$cancer_hx_ever)="Self-Reported History of Cancer"
label(data$arthritis_hx_ever)="Self-Reported History of Arthritis"
label(data$stenosis_hx_ever)="Self-Reported History of Spinal Stenosis"
label(data$osteoporosis_hx_ever)="Self-Reported History of Osteoporosis"
label(data$ctd_hx_ever)="Self-Reported History of CTD"
label(data$parkinson_hx_ever)="Self-Reported History of Parkinson"
label(data$pad_hx_ever)="Self-Reported History of PAD"
label(data$pvd_hx_ever)="Self-Reported History of Varicose Veins"
label(data$cataract1_hx_ever)="Self-Reported History of Cataracts"
label(data$cataract2_hx_ever)="Self-Reported History of Cataracts (both eyes)"
label(data$cataract_surg_hx_ever)="Self-Reported History of Cataract Procedures"
label(data$ulcer_hx_ever)="Self-Reported History of Ulcer"
label(data$depression_hx_ever)="Self-Reported History of Depression"
label(data$covid_hx_ever)="Self-Reported History of COVID-19"
label(data$antacidmed_file)="Antacid Medication Brought to Clinic"
label(data$anticoagmed_file)="Anticoagulant Medication Brought to Clinic"
label(data$antihistaminemed_file)="Antihistamine Medication Brought to Clinic"
label(data$antipsychoticmeds)="Antipsychotic Medication Brought to Clinic"
label(data$antiviralabxmeds)="Antivirals and Antibiotics Medication Brought to Clinic"
label(data$asthmameds_file)="Asthma Medication Brought to Clinic"
label(data$bpmeds_file)="BP Medication Brought to Clinic"
label(data$cholesterolmeds_file)="Cholesterol Medication Brought to Clinic"
label(data$chfmeds_file)="Congestive Heart Failure Medication Brought to Clinic"
label(data$cancermeds_file)="Chemotherapy Medication Brought to Clinic"
label(data$copdmeds_file)="Chronic Obstructive Pulmonary Disease Medication Brought to Clinic"
label(data$dementiameds_file)="Dementia Medication Brought to Clinic"
label(data$depressionmeds_file)="Depression Medication Brought to Clinic"
label(data$diabetesmeds_file)="Diabetes Medication Brought to Clinic"
label(data$gerdmeds_file)="Gastro-Esophageal Reflux Medication Brought to Clinic"
label(data$laxativemeds_file)="Laxatives Medication Brought to Clinic"
label(data$aspirinmeds_file)="Low Dose Aspirin Brought to Clinic"
label(data$edmeds_file)="Male Impotence Medication Brought to Clinic"
label(data$osteoporosismeds_file)="Osteoporosis Medication Brought to Clinic"
label(data$painmeds_file)="Pain Medication Brought to Clinic"
label(data$parkinsonmeds_file)="Parkinson's Medication Brought to Clinic"
label(data$sleepmeds_file)="Sleep Medication Brought to Clinic"
label(data$thyroidmeds_file)="Thyroid Hormone Medication Brought to Clinic"
label(data$topicalmeds_file)="Topical Medication Brought to Clinic"
label(data$triglyceridemeds_file)="Triglycerides Medication Brought to Clinic"
label(data$vitaminmineralmeds_file)="Vitamin or Mineral Medication Brought to Clinic"
label(data$vitamindmeds_file)="Vitamin D Medication Brought to Clinic"
label(data$bpmeds_self)="Self-Reported BP Medication Use"
label(data$diabetesmeds_self)="Self-Reported Glucose Medication Use (Y/N)"
label(data$cholesterolmeds_self)="Self-Reported Cholesterol Medication Use (Y/N)"
label(data$depressiontrt_self)="Self-Reported Teatment/Medication and/or Counselling for Depression"
label(data$bpmeds)="BP Medication Use"
label(data$diabetesmeds)="Glucose Medication Use (Y/N)"
label(data$cholesterolmeds)="Cholesterol Medication Use (Y/N)"
label(data$depressiontrt)="Teatment/Medication and/or Counselling for Depression"
label(data$hakcal)="calories expended in exercise related activity - Harvard alumni scale"
label(data$totkkwk)="calories per kg expended in all activity"
label(data$totkcal)="calories expended in all activity"
label(data$highxmin)="minutes of vigorous actvity per week including brisk walking"
label(data$walktime)="minutes of any walking per week"
label(data$exercise)="exercise level 0=lt 30 mins and 3=gt 150 mins per week"
label(data$walkquartermile)="Difficulty/ease walking 1/4 mile"
label(data$walkonemile)="Difficulty/ease walking 1 mile if no difficulty walking 1/4 mile"
label(data$wkindex)="Walking ability summary score"
label(data$stairs10)="Difficulty/ease walking up 10 steps"
label(data$stairs20)="Difficulty/ease walking up 20 steps if no difficulty walking up 10 steps"
label(data$stindex)="Climbing stairs ability summary score"
label(data$liftcarry10)="Difficulty/ease lifting/carrying 10 lbs"
label(data$liftcarry20)="Difficulty/ease lifting/carrying 20 lbs if no difficulty lifting/carrying 10 lbs"
label(data$lcindex)="Lifting/carrying ability summary score"
label(data$handgrip)="Maximum hand grip (kg)"
label(data$did400m)="400 meter walk - completion flag"
label(data$c400secs)="400 meter walk - time (seconds)"
label(data$c400pace)="400 meter walk - pace (m/s)"
label(data$c400aid)="400 meter walk - walking aid use"
label(data$uw150)="Usual pace walk - completion flag"
label(data$uw150meters)="Usual pace walk - distance (meters)"
label(data$uw150pace)="Usual pace walk - pace (m/s)"
label(data$uw150aid)="Usual pace walk - walking aid use"
label(data$adl_trans)="ADL - any difficulty getting in and out of bed or chair"
label(data$adlh_trans)="ADL - need special equipment getting in and out of bed or chair"
label(data$adl_bathe)="ADL - any difficulty bathing or showering"
label(data$adlh_bathe)="ADL - need special equipment bathing or showering"
label(data$adl_dress)="ADL - any difficulty dressing"
label(data$adlh_dress)="ADL - need special equipment dressing"
label(data$adl_eat)="ADL - any difficulty eating"
label(data$adlh_eat)="ADL - need special equipment eating"
label(data$adl_toilet)="ADL - any difficulty using the toilet"
label(data$adlh_toilet)="ADL - need special equipment using the toilet"
label(data$adl_walk)="ADL - any difficulty walking across a small room"
label(data$adlh_walk)="ADL - need special equipment walking across a small room"
label(data$adl_total)="ADL - total score"
label(data$adl_nmiss)="ADL - number missing"
label(data$adl_number)="ADL - number with any difficulty (if all non-missing)"
label(data$iadl_lightwork)="IADL - any difficulty doing light housework"
label(data$iadlh_lightwork)="IADL - do not do light housework for health-related reasons"
label(data$iadl_heavywork)="IADL - any difficulty doing heavy housework"
label(data$iadlh_heavywork)="IADL - do not do heavy housework for health-related reasons"
label(data$iadl_meal)="IADL - any difficulty preparing own meals"
label(data$iadlh_meal)="IADL - do not prepare meals for health-related reasons"
label(data$iadl_shop)="IADL - any difficulty shopping for personal items"
label(data$iadlh_shop)="IADL - do not shop for health-related reasons"
label(data$iadl_phone)="IADL - any difficulty using the telephone"
label(data$iadlh_phone)="IADL - do not use the telephone for health-related reasons"
label(data$iadl_meds)="IADL - any difficulty taking medication"
label(data$iadlh_meds)="IADL - do not take medication for health-related reasons"
label(data$iadl_money)="IADL - any difficulty managing money"
label(data$iadlh_money)="IADL - do not manage money for health-related reasons"
label(data$iadl_drive)="IADL - any difficulty driving"
label(data$iadlh_drive)="IADL - primary reason do not drive"
label(data$r6mtime)="6 meter walk time (sec)"
label(data$rapidgaitspeed)="Rapid gait speed (m/s)"
label(data$gaitspeed)="Usual gait speed (m/s)"
label(data$sppb_gs)="SPPB - gait speed score"
label(data$sppb_cs)="SPPB - chair stand score"
label(data$sppb_sb)="SPPB - standing balance score"
label(data$sppb)="SPPB - score"
label(data$gs_ratio)="Expanded SPPB - Gait Speed Ratio"
label(data$cs5pace)="SPPB - 5 chair stand speed"
label(data$cs10pace)="SPPB - 10 chair stand speed"
label(data$cs_ratio)="Expanded SPPB - Chair Stand Ratio"
label(data$nwalk)="Successfully completed narrow walk"
label(data$nwalktime)="Narrow walk time in seconds"
label(data$nwspeed)="Narrow walk speed (m/s)"
label(data$nw_ratio)="Expanded SPPB - Narrow Walk Ratio"
label(data$ststime)="Semi-tandem stand time in seconds"
label(data$ftstime)="Full-tandem time in seconds"
label(data$slstime)="Single leg stand time in seconds"
label(data$totsbtime)="Total standing balance time (seconds)"
label(data$sb_ratio)="Expanded SPPB - Standing Balance Ratio"
label(data$habcppb)="Expanded SPPB - score"
label(data$sf12_pcscore)="Physical health composite score"
label(data$sf12_mcscore)="Mental health composite score"
label(data$nmisssf)="Number of missing components in SF12"
label(data$ekg26)="EKG26"
label(data$ekg27)="EKG27"
label(data$ekg28)="EKG28"
label(data$ekg29)="EKG29"
label(data$demo03)="Current marital status"
label(data$pf01)="Do you have difficulty walking a quarter mile due to health"
label(data$pf01a)="How much difficulty walking a quarter mile"
label(data$pf01b)="How easy is it to walk quarter mile"
label(data$pf01c)="Do you have difficulty walking one mile due to health"
label(data$pf01d)="How easy is it to walk one mile"
label(data$ap02)="Have you had pain or aching most days for at least one month in or around either knee"
label(data$ap02g)="Most days in past 12 mo did you have stiffness in either of your knees"
label(data$ap03)="Have you had pain most days for at least one month in or around either hip"
label(data$ap10)="In the past 12 months have you had pain lasting at least one month in your feet toes or ankles"
label(data$ldcw05)="Need to use walking aid"
label(data$ldcw01)="Was the participant able to complete the fast paced 6 meter walk with or without a walking aid"
label(data$ldcw02)="Are there abnormal ECG hardcopy references"
label(data$ldcw03)="Was resting heart rate greater than 120 bpm"
label(data$ldcw04)="Was Systolic BP greater than 180 or diastolic pressure greater than 110"
label(data$ldcw11)="Had heart attack within past 3 mo"
label(data$ldcw12)="Had angioplasty within past 3 mo"
label(data$ldcw13)="Had heart surgery within past 3 mo"
label(data$ldcw14)="Had new or worsening within past 3 mo"
label(data$ldcw15)="Had new or worsening angina within past 3 mo"
label(data$ldcw16)="Had new or worsening shortness of breath within past 3 mo"
label(data$mdcw27)="Did participant complete 230 walk"
label(data$mdcw27a)="Usual Pace reason not done"
label(data$ldcw47)="Did participant complete 400 meter walk"
label(data$ldcw47a)="400 meter reason not done"
label(data$mdhx3)="Has doctor ever said you had a heart attack or myocardial infarction"
label(data$mdhx4)="Has doctor ever said you had a heart failure or CHF"
label(data$mdhx5)="Has doctor ever said you had angina chest pain due to heart or coronary artery disease"
label(data$mdhx6)="Has doctor ever said you had chronic bronchitis emphysema or COPD"
label(data$mdhx7)="Has doctor ever said you had asthma"
label(data$mdhx7a)="If yes do you still have asthma"
label(data$mdhx12)="Has doctor ever said you had a stroke mini stroke or slight stroke"
label(data$mdhx15)="Has doctor ever said you had high blood pressure or hypertension"
label(data$mdhx15a)="If yes are you currently taking prescribed medications for BP"
label(data$mdhx16)="Has doctor ever said you had diabetes glucose intolerance or high blood sugar"
label(data$mdhx16a)="If yes are you currently taking diabetes medication"
label(data$mdhx18)="Had bypass surgery carotid endarterectomy or aortic aneurysm repair"
label(data$mdhx18a1)="Coronary bypass surgery heart bypass or CABG"
label(data$mdhx18a2)="Angioplasty of coronary arteries"
label(data$mdhx18a4)="Angioplasty on leg or femoral arteries"
label(data$mdhx19)="Ever told you had cancer or malignant growth"
label(data$mdh19a1)="Bladder cancer YN"
label(data$mdh19a2)="Brain cancer YN"
label(data$mdh19a3)="Breast cancer YN"
label(data$mdh19a4)="Cervical cancer YN"
label(data$mdh19a5)="Colon Rectal cancer YN"
label(data$mdh19a6)="Endometrial cancer YN"
label(data$mdh19a7)="Leukemia cancer YN"
label(data$mdh19a8)="Liver cancer YN"
label(data$mdh19a9)="Lung cancer YN"
label(data$mdh19a10)="Lymphoma cancer YN"
label(data$mdh19a11)="Melanoma cancer YN"
label(data$mdh19a12)="Ovarian cancer YN"
label(data$mdh19a13)="Pancreatic cancer YN"
label(data$mdh19a14)="Prostate cancer YN"
label(data$mdh19a15)="Skin Basal cancer YN"
label(data$mdh19a16)="Skin Squamous cancer YN"
label(data$mdh19a17)="Stomach cancer YN"
label(data$mdh19a18)="Thyroid cancer YN"
label(data$mdh19a19)="Other cancer YN"
label(data$mdhx24)="Has doctor ever said you had Parkinsons disease"
label(data$mdhx25)="Has doctor ever said you had Intermittent Claudication or PAD"
label(data$cvrs6)="In the past 12 months have you had to sleep on 2 or more pillows to help you breathe"
label(data$pe18)="Rales"
label(data$pe67sr2)="BP right systolic measurement 2"
label(data$pe67dr2)="BP right diastolic measurement 2"
label(data$pe67sl2)="BP left systolic measurement 2"
label(data$pe67dl2)="BP left diastolic measurement 2"
label(data$pe67sr3)="BP right systolic measurement 3"
label(data$pe67dr3)="BP right diastolic measurement 3"
label(data$pe67sl3)="BP left systolic measurement 3"
label(data$pe67dl3)="BP left diastolic measurement 3"
label(data$pe67hrt)="Heart rate"
label(data$pe67f)="Supine blood pressure completed"
label(data$pe67fm)="Supine blood pressure reason not done"
label(data$pe83)="Edema score"
label(data$tssborg)="Borg score for Steady Stage"

#Create new variables for factors
data$abi2cat.factor = factor(data$abi2cat, levels = c("0","1"))
levels(data$abi2cat.factor) = c("PAD Absent: ABI greater than or equal to 0.9","PAD Present: ABI < 0.9")

data$pad.factor = factor(data$pad, levels = c("0","1"))
levels(data$pad.factor) = c("PAD Absent","PAD Present")

data$intweightloss.factor = factor(data$intweightloss, levels = c("1","0"))
levels(data$intweightloss.factor) = c("Intentional Weight Loss","Unintentional Weight Loss")

data$obesity4cat.factor = factor(data$obesity4cat, levels = c("3","2","4","1"))
levels(data$obesity4cat.factor) = c("Overweight: 25 <= BMI < 30 kg/m^2","Normal: 18.5 <= BMI < 25 kg/m^2","Obese: BMI >= 30 kg/m^2","Underweight: BMI < 18.5 kg/m^2")

data$obesity6cat.factor = factor(data$obesity6cat, levels = c("3","2","4","5","6","1"))
levels(data$obesity6cat.factor) = c("Overweight: 25 less than or equal to BMI < 30 kg/m^2","Normal: 18.5 less than or equal to BMI < 25 kg/m^2","Class 1 Obesity: 30 less than or equal to BMI < 35 kg/m^2","Class 2 Obesity: 35 less than or equal to BMI < 40 kg/m^2","Class 3 Obesity: BMI >= 40 kg/m^2","Underweight: BMI < 18.5 kg/m^2")

data$htn_self.factor = factor(data$htn_self, levels = c("1","0"))
levels(data$htn_self.factor) = c("Self-Reported History of HTN","No Reported History of HTN")

data$bpjnc7.factor = factor(data$bpjnc7, levels = c("0","1","2","3"))
levels(data$bpjnc7.factor) = c("Normal","Pre-HTN","Stage I HTN","Stage II HTN")

data$bp2cat.factor = factor(data$bp2cat, levels = c("0","1"))
levels(data$bp2cat.factor) = c("Normal: SBP < 130 and DBP < 80","Elevated: SBP greater than or equal to 130 or DBP greater than or equal to 80")

data$htn.factor = factor(data$htn, levels = c("0","1"))
levels(data$htn.factor) = c("Non-Hypertensive","Hypertensive")

data$icrose.factor = factor(data$icrose, levels = c("0","1"))
levels(data$icrose.factor) = c("Intermittent Claudication Sympoms Absent","Intermittent Claudication Sympoms Present")

data$cesd01.factor = factor(data$cesd01, levels = c("0","1","2","3","5"))
levels(data$cesd01.factor) = c("Rarely or None of the Time","Some or Little of the Time","Moderately or Much of the time","Most or Almost All the Time","None")

data$cesd02.factor = factor(data$cesd02, levels = c("0","1","2","3","5"))
levels(data$cesd02.factor) = c("Rarely or None of the Time","Some or Little of the Time","Moderately or Much of the time","Most or Almost All the Time","None")

data$cesd03.factor = factor(data$cesd03, levels = c("0","1","2","3","5"))
levels(data$cesd03.factor) = c("Rarely or None of the Time","Some or Little of the Time","Moderately or Much of the time","Most or Almost All the Time","None")

data$cesd04.factor = factor(data$cesd04, levels = c("0","3","1","2","9","5"))
levels(data$cesd04.factor) = c("Most or Almost All the Time","Rarely or None of the Time","Moderately or Much of the time","Some or Little of the Time","None","None")

data$cesd05.factor = factor(data$cesd05, levels = c("0","1","2","3","5","9"))
levels(data$cesd05.factor) = c("Rarely or None of the Time","Some or Little of the Time","Moderately or Much of the time","Most or Almost All the Time","None","None")

data$cesd06.factor = factor(data$cesd06, levels = c("0","1","2","3","9","5"))
levels(data$cesd06.factor) = c("Rarely or None of the Time","Some or Little of the Time","Moderately or Much of the time","Most or Almost All the Time","None","None")

data$cesd07.factor = factor(data$cesd07, levels = c("0","1","2","3","5"))
levels(data$cesd07.factor) = c("Rarely or None of the Time","Some or Little of the Time","Moderately or Much of the time","Most or Almost All the Time","None")

data$cesd08.factor = factor(data$cesd08, levels = c("0","1","3","2","5"))
levels(data$cesd08.factor) = c("Most or Almost All the Time","Moderately or Much of the time","Rarely or None of the Time","Some or Little of the Time","None")

data$cesd09.factor = factor(data$cesd09, levels = c("0","1","2","3","5","9"))
levels(data$cesd09.factor) = c("Rarely or None of the Time","Some or Little of the Time","Moderately or Much of the time","Most or Almost All the Time","None","None")

data$cesd10.factor = factor(data$cesd10, levels = c("0","1","2","3","5"))
levels(data$cesd10.factor) = c("Rarely or None of the Time","Some or Little of the Time","Moderately or Much of the time","Most or Almost All the Time","None")

data$cesd11.factor = factor(data$cesd11, levels = c("0","1","2","3","9","5"))
levels(data$cesd11.factor) = c("Rarely or None of the Time","Some or Little of the Time","Moderately or Much of the time","Most or Almost All the Time","None","None")

data$cesd12.factor = factor(data$cesd12, levels = c("0","1","2","3","5"))
levels(data$cesd12.factor) = c("Most or Almost All the Time","Moderately or Much of the time","Some or Little of the Time","Rarely or None of the Time","None")

data$cesd13.factor = factor(data$cesd13, levels = c("0","1","2","3","9","5"))
levels(data$cesd13.factor) = c("Rarely or None of the Time","Some or Little of the Time","Moderately or Much of the time","Most or Almost All the Time","None","None")

data$cesd14.factor = factor(data$cesd14, levels = c("0","1","2","3","9","5"))
levels(data$cesd14.factor) = c("Rarely or None of the Time","Some or Little of the Time","Moderately or Much of the time","Most or Almost All the Time","None","None")

data$cesd15.factor = factor(data$cesd15, levels = c("0","1","2","3","5"))
levels(data$cesd15.factor) = c("Rarely or None of the Time","Some or Little of the Time","Moderately or Much of the time","Most or Almost All the Time","None")

data$cesd16.factor = factor(data$cesd16, levels = c("0","1","3","2","5","4"))
levels(data$cesd16.factor) = c("Most or Almost All the Time","Moderately or Much of the time","Rarely or None of the Time","Some or Little of the Time","None","None")

data$cesd17.factor = factor(data$cesd17, levels = c("0","1","2","3","5"))
levels(data$cesd17.factor) = c("Rarely or None of the Time","Some or Little of the Time","Moderately or Much of the time","Most or Almost All the Time","None")

data$cesd18.factor = factor(data$cesd18, levels = c("0","1","2","3","5"))
levels(data$cesd18.factor) = c("Rarely or None of the Time","Some or Little of the Time","Moderately or Much of the time","Most or Almost All the Time","None")

data$cesd19.factor = factor(data$cesd19, levels = c("0","1","2","3","5"))
levels(data$cesd19.factor) = c("Rarely or None of the Time","Some or Little of the Time","Moderately or Much of the time","Most or Almost All the Time","None")

data$cesd20.factor = factor(data$cesd20, levels = c("0","1","2","3","5"))
levels(data$cesd20.factor) = c("Rarely or None of the Time","Some or Little of the Time","Moderately or Much of the time","Most or Almost All the Time","None")

data$cesd_der16.factor = factor(data$cesd_der16, levels = c("0","1"))
levels(data$cesd_der16.factor) = c("Symptoms Absent","Symptoms Present")

data$cesd_der20.factor = factor(data$cesd_der20, levels = c("0","1"))
levels(data$cesd_der20.factor) = c("Significant Symptoms Absent","Significant Symptoms Present")

data$depression.factor = factor(data$depression, levels = c("0","1"))
levels(data$depression.factor) = c("Depression Absent","Depression Present")

data$cogn_status.factor = factor(data$cogn_status, levels = c("0","1","2","3"))
levels(data$cogn_status.factor) = c("Normal","MCI","Dementia","Impaired Not-MCI/Dem")

data$last_cogn_status.factor = factor(data$last_cogn_status, levels = c("0","2","1","3"))
levels(data$last_cogn_status.factor) = c("Normal","Dementia","MCI","Impaired Not-MCI/Dem")

data$last_cogn_status_dementia.factor = factor(data$last_cogn_status_dementia, levels = c("0","1"))
levels(data$last_cogn_status_dementia.factor) = c("Non-Dementia","Dementia")

data$last_cogn_status_alzdis.factor = factor(data$last_cogn_status_alzdis, levels = c("0","1"))
levels(data$last_cogn_status_alzdis.factor) = c("non-AD","Dementia due to Alzheimers")

data$last_cogn_status_type1.factor = factor(data$last_cogn_status_type1, levels = c("0","2","4","3","9","5","8","14","6","17","10","18","15","7","1","11","12","13","19"))
levels(data$last_cogn_status_type1.factor) = c("Normal","Probable AD","Vascular dementia","Possible AD","Unspecified","Consistent w/ AD","PD","Dementia w/ lewy body","Depression","Vascular without dementia","Other primary DX","Other Dementia","Frontotemporal dementia","Alcohol abuse","Definite AD","Other secondary DX","Normal pressure hydrocephalus","Hippocampal sclerosis","Unknown")

data$last_cogn_status_type2.factor = factor(data$last_cogn_status_type2, levels = c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","17","18","19"))
levels(data$last_cogn_status_type2.factor) = c("Normal","Definite AD","Probable AD","Possible AD","Vascular dementia","Consistent w/ AD","Depression","Alcohol abuse","PD","Unspecified","Other primary DX","Other secondary DX","Normal pressure hydrocephalus","Hippocampal sclerosis","Dementia w/ lewy body","Frontotemporal dementia","Vascular without dementia","Other Dementia","Unknown")

data$last_cogn_status_caseconf.factor = factor(data$last_cogn_status_caseconf, levels = c("0","1"))
levels(data$last_cogn_status_caseconf.factor) = c("Participant has never been case-conferenced","Participant has been case-conferenced")

data$visitmonth.factor = factor(data$visitmonth, levels = c("6","8","3","5","7","10","4","9","11","1","2","12"))
levels(data$visitmonth.factor) = c("June","August","March","May","July","October","April","September","November","January","February","December")

data$visittype.factor = factor(data$visittype, levels = c("1","2","3"))
levels(data$visittype.factor) = c("Clinical","Home","Clinical + Home Split Visit")

data$laststatus.factor = factor(data$laststatus, levels = c("2","1","3","4"))
levels(data$laststatus.factor) = c("Deceased","On Study","Withdrawn","Terminated")

data$male.factor = factor(data$male, levels = c("1","0"))
levels(data$male.factor) = c("Male","Female")

data$race.factor = factor(data$race, levels = c("6","8","3","1","5","2","9","7"))
levels(data$race.factor) = c("White","Unknown or not reported","Black or African American","Other Asian or Pacific Islander","Hispanic","American Indian or Alaskan Native","Asian","More than one race")

data$race3cat.factor = factor(data$race3cat, levels = c("1","2","3"))
levels(data$race3cat.factor) = c("White","Black or African American","Other")

data$black.factor = factor(data$black, levels = c("0","1"))
levels(data$black.factor) = c("NonBlack","Black")

data$ethnicity.factor = factor(data$ethnicity, levels = c("0","1","2"))
levels(data$ethnicity.factor) = c("Not reported / Unknown","Not Hispanic or Latino","Hispanic or Latino")

data$borninus.factor = factor(data$borninus, levels = c("1","0"))
levels(data$borninus.factor) = c("Born In US","Born Outside US")

data$englishfirstlang.factor = factor(data$englishfirstlang, levels = c("1","0"))
levels(data$englishfirstlang.factor) = c("Yes","No")

data$maritalstatus.factor = factor(data$maritalstatus, levels = c("1","5","4","6","2","3","7","8"))
levels(data$maritalstatus.factor) = c("Married","Widowed","Divorced","Never married","Living with a partner","Separated","Refused","Dont know")

data$householdsize.factor = factor(data$householdsize, levels = c("1","0","2","3","8","7"))
levels(data$householdsize.factor) = c("1 other","Lives alone","2 others","3 or more others","Dont know","Refused")

data$housingtype.factor = factor(data$housingtype, levels = c("1","2","3","4","5","8","7"))
levels(data$housingtype.factor) = c("Single family home","Co-op, condominium, apartment","Continuing care community","Assisted living","Long term care facility","Dont know","refused")

data$smkstat.factor = factor(data$smkstat, levels = c("0","1","2"))
levels(data$smkstat.factor) = c("Never smoked","Former Smoker","Current Smoker")

data$smokehx.factor = factor(data$smokehx, levels = c("0","1","3","2"))
levels(data$smokehx.factor) = c("Never smoked","Quit 10+ yrs ago","Current smoker","Quit <10 yrs ago")

data$smoker.factor = factor(data$smoker, levels = c("0","1"))
levels(data$smoker.factor) = c("Non-Smoker","Smoker")

data$alcoholhx.factor = factor(data$alcoholhx, levels = c("2","0","1"))
levels(data$alcoholhx.factor) = c("Current Drinker","Non-Drinker","Former Drinker")

data$drinker.factor = factor(data$drinker, levels = c("1","0"))
levels(data$drinker.factor) = c("Drinker","Non-Drinker")

data$alcohol.factor = factor(data$alcohol, levels = c("0","1","2","3","4"))
levels(data$alcohol.factor) = c("less than one","1-3 drinks","4-7 drinks","8-14 drinks","more than 14")

data$education.factor = factor(data$education, levels = c("18","16","20","12","14","21","19","0","77","88"))
levels(data$education.factor) = c("Masters degree","four year college","MD or PhD","high school (or GED equivalent)","two year college / Associates degree","multiple graduate degrees","Law degree","no formal schooling","refused","unknown")

data$educ3cat.factor = factor(data$educ3cat, levels = c("2","1","0"))
levels(data$educ3cat.factor) = c(">High School","High School/GED","<High School")

data$educ5cat.factor = factor(data$educ5cat, levels = c("4","3","1","2","0"))
levels(data$educ5cat.factor) = c("Post college","College grad","High school","Some college","Less than high school")

data$glucose0_3cat.factor = factor(data$glucose0_3cat, levels = c("0","1","2"))
levels(data$glucose0_3cat.factor) = c("Normal Glucose Tolerance","Pre-Diabetes","Type 2 Diabetes")

data$glucose120_3cat.factor = factor(data$glucose120_3cat, levels = c("0","1","2"))
levels(data$glucose120_3cat.factor) = c("Normal Glucose Tolerance","Pre-Diabetes","Type 2 Diabetes")

data$hba1c3cat.factor = factor(data$hba1c3cat, levels = c("1","0","2"))
levels(data$hba1c3cat.factor) = c("Pre-Diabetes","Normal Glucose Tolerance","Type 2 Diabetes")

data$glucose3cat.factor = factor(data$glucose3cat, levels = c("0","1","2"))
levels(data$glucose3cat.factor) = c("Normal Glucose Tolerance","Pre-Diabetes","Type 2 Diabetes")

data$diab3cat.factor = factor(data$diab3cat, levels = c("1","2","0"))
levels(data$diab3cat.factor) = c("Pre-Diabetes","Type 2 Diabetes","Normal Glucose Tolerance")

data$ldl5cat.factor = factor(data$ldl5cat, levels = c("1","2","3","4","5"))
levels(data$ldl5cat.factor) = c("Optimal: LDL < 100 mg/dL","Near/Above Optimal: 100 less than or equal to LDL < 130 mg/dL","Borderline High: 130 less than or equal to LDL < 160 mg/dL","High: 160 less than or equal to LDL < 190 mg/dL","Very High: LDL ≥ 190 mg/dL")

data$hdl3cat.factor = factor(data$hdl3cat, levels = c("3","2","1"))
levels(data$hdl3cat.factor) = c("High: HDL ≥ 60 mg/dL","Normal: 40 less than or equal to HDL < 60 (males); 50 less than or equal to HDL < 60 mg/dL (females)","Low: HDL < 40 (males); HDL < 50 mg/dL (females)")

data$trigs4cat.factor = factor(data$trigs4cat, levels = c("1","2","3","4"))
levels(data$trigs4cat.factor) = c("Normal: Trigs < 150 mg/dL","Borderline High: 150 <= Trigs < 200 mg/dL","High: 200 <= Trigs < 500 mg/dL","Very High: Trigs >= 500 mg/dL")

data$anemia.factor = factor(data$anemia, levels = c("0","1"))
levels(data$anemia.factor) = c("Normal Hgb: Hgb greater than or equal to 40 (males); Hgb greater than or equal to 12 g/dL (females)","Anemia: Hgb < 13 (males); Hgb < 12 g/dL (females)")

data$mi_hx_ever.factor = factor(data$mi_hx_ever, levels = c("0","1"))
levels(data$mi_hx_ever.factor) = c("No","Yes")

data$hf_hx_ever.factor = factor(data$hf_hx_ever, levels = c("0","1"))
levels(data$hf_hx_ever.factor) = c("No","Yes")

data$angina_hx_ever.factor = factor(data$angina_hx_ever, levels = c("0","1"))
levels(data$angina_hx_ever.factor) = c("No","Yes")

data$cld_hx_ever.factor = factor(data$cld_hx_ever, levels = c("0","1"))
levels(data$cld_hx_ever.factor) = c("No","Yes")

data$asthma_hx_ever.factor = factor(data$asthma_hx_ever, levels = c("0","1"))
levels(data$asthma_hx_ever.factor) = c("No","Yes")

data$liver_dz_hx_ever.factor = factor(data$liver_dz_hx_ever, levels = c("0","1"))
levels(data$liver_dz_hx_ever.factor) = c("No","Yes")

data$hepatitis_hx_ever.factor = factor(data$hepatitis_hx_ever, levels = c("0","1"))
levels(data$hepatitis_hx_ever.factor) = c("No","Yes")

data$hiv_hx_ever.factor = factor(data$hiv_hx_ever, levels = c("0","1"))
levels(data$hiv_hx_ever.factor) = c("No","Yes")

data$ckd_hx_ever.factor = factor(data$ckd_hx_ever, levels = c("0","1"))
levels(data$ckd_hx_ever.factor) = c("No","Yes")

data$stroke_hx_ever.factor = factor(data$stroke_hx_ever, levels = c("0","1"))
levels(data$stroke_hx_ever.factor) = c("No","Yes")

data$tia_hx_ever.factor = factor(data$tia_hx_ever, levels = c("0","1"))
levels(data$tia_hx_ever.factor) = c("No","Yes")

data$pn_hx_ever.factor = factor(data$pn_hx_ever, levels = c("0","1"))
levels(data$pn_hx_ever.factor) = c("No","Yes")

data$htn_hx_ever.factor = factor(data$htn_hx_ever, levels = c("1","0"))
levels(data$htn_hx_ever.factor) = c("Yes","No")

data$dm_hx_ever.factor = factor(data$dm_hx_ever, levels = c("0","1"))
levels(data$dm_hx_ever.factor) = c("No","Yes")

data$hld_hx_ever.factor = factor(data$hld_hx_ever, levels = c("1","0"))
levels(data$hld_hx_ever.factor) = c("Yes","No")

data$vascular_proc_hx_ever.factor = factor(data$vascular_proc_hx_ever, levels = c("0","1"))
levels(data$vascular_proc_hx_ever.factor) = c("No","Yes")

data$cancer_hx_ever.factor = factor(data$cancer_hx_ever, levels = c("0","1"))
levels(data$cancer_hx_ever.factor) = c("No","Yes")

data$arthritis_hx_ever.factor = factor(data$arthritis_hx_ever, levels = c("1","0"))
levels(data$arthritis_hx_ever.factor) = c("Yes","No")

data$stenosis_hx_ever.factor = factor(data$stenosis_hx_ever, levels = c("0","1"))
levels(data$stenosis_hx_ever.factor) = c("No","Yes")

data$osteoporosis_hx_ever.factor = factor(data$osteoporosis_hx_ever, levels = c("0","1"))
levels(data$osteoporosis_hx_ever.factor) = c("No","Yes")

data$ctd_hx_ever.factor = factor(data$ctd_hx_ever, levels = c("0","1"))
levels(data$ctd_hx_ever.factor) = c("No","Yes")

data$parkinson_hx_ever.factor = factor(data$parkinson_hx_ever, levels = c("0","1"))
levels(data$parkinson_hx_ever.factor) = c("No","Yes")

data$pad_hx_ever.factor = factor(data$pad_hx_ever, levels = c("0","1"))
levels(data$pad_hx_ever.factor) = c("No","Yes")

data$pvd_hx_ever.factor = factor(data$pvd_hx_ever, levels = c("0","1"))
levels(data$pvd_hx_ever.factor) = c("No","Yes")

data$cataract1_hx_ever.factor = factor(data$cataract1_hx_ever, levels = c("0","1"))
levels(data$cataract1_hx_ever.factor) = c("No","Yes")

data$cataract2_hx_ever.factor = factor(data$cataract2_hx_ever, levels = c("1","0"))
levels(data$cataract2_hx_ever.factor) = c("Yes","No")

data$cataract_surg_hx_ever.factor = factor(data$cataract_surg_hx_ever, levels = c("0","1"))
levels(data$cataract_surg_hx_ever.factor) = c("No","Yes")

data$ulcer_hx_ever.factor = factor(data$ulcer_hx_ever, levels = c("0","1"))
levels(data$ulcer_hx_ever.factor) = c("No","Yes")

data$depression_hx_ever.factor = factor(data$depression_hx_ever, levels = c("0","1"))
levels(data$depression_hx_ever.factor) = c("No","Yes")

data$covid_hx_ever.factor = factor(data$covid_hx_ever, levels = c("0","1"))
levels(data$covid_hx_ever.factor) = c("No","Yes")

data$antacidmed_file.factor = factor(data$antacidmed_file, levels = c("0","1"))
levels(data$antacidmed_file.factor) = c("No","Yes")

data$anticoagmed_file.factor = factor(data$anticoagmed_file, levels = c("0","1"))
levels(data$anticoagmed_file.factor) = c("No","Yes")

data$antihistaminemed_file.factor = factor(data$antihistaminemed_file, levels = c("0","1"))
levels(data$antihistaminemed_file.factor) = c("No","Yes")

data$antipsychoticmeds.factor = factor(data$antipsychoticmeds, levels = c("0","1"))
levels(data$antipsychoticmeds.factor) = c("No","Yes")

data$antiviralabxmeds.factor = factor(data$antiviralabxmeds, levels = c("0","1"))
levels(data$antiviralabxmeds.factor) = c("No","Yes")

data$asthmameds_file.factor = factor(data$asthmameds_file, levels = c("0","1"))
levels(data$asthmameds_file.factor) = c("No","Yes")

data$bpmeds_file.factor = factor(data$bpmeds_file, levels = c("0","1"))
levels(data$bpmeds_file.factor) = c("No","Yes")

data$cholesterolmeds_file.factor = factor(data$cholesterolmeds_file, levels = c("0","1"))
levels(data$cholesterolmeds_file.factor) = c("No","Yes")

data$chfmeds_file.factor = factor(data$chfmeds_file, levels = c("0","1"))
levels(data$chfmeds_file.factor) = c("No","Yes")

data$cancermeds_file.factor = factor(data$cancermeds_file, levels = c("0","1"))
levels(data$cancermeds_file.factor) = c("No","Yes")

data$copdmeds_file.factor = factor(data$copdmeds_file, levels = c("0","1"))
levels(data$copdmeds_file.factor) = c("No","Yes")

data$dementiameds_file.factor = factor(data$dementiameds_file, levels = c("0","1"))
levels(data$dementiameds_file.factor) = c("No","Yes")

data$depressionmeds_file.factor = factor(data$depressionmeds_file, levels = c("0","1"))
levels(data$depressionmeds_file.factor) = c("No","Yes")

data$diabetesmeds_file.factor = factor(data$diabetesmeds_file, levels = c("0","1"))
levels(data$diabetesmeds_file.factor) = c("No","Yes")

data$gerdmeds_file.factor = factor(data$gerdmeds_file, levels = c("0","1"))
levels(data$gerdmeds_file.factor) = c("No","Yes")

data$laxativemeds_file.factor = factor(data$laxativemeds_file, levels = c("0","1"))
levels(data$laxativemeds_file.factor) = c("No","Yes")

data$aspirinmeds_file.factor = factor(data$aspirinmeds_file, levels = c("0","1"))
levels(data$aspirinmeds_file.factor) = c("No","Yes")

data$edmeds_file.factor = factor(data$edmeds_file, levels = c("0","1"))
levels(data$edmeds_file.factor) = c("No","Yes")

data$osteoporosismeds_file.factor = factor(data$osteoporosismeds_file, levels = c("0","1"))
levels(data$osteoporosismeds_file.factor) = c("No","Yes")

data$painmeds_file.factor = factor(data$painmeds_file, levels = c("1","0"))
levels(data$painmeds_file.factor) = c("Yes","No")

data$parkinsonmeds_file.factor = factor(data$parkinsonmeds_file, levels = c("0","1"))
levels(data$parkinsonmeds_file.factor) = c("No","Yes")

data$sleepmeds_file.factor = factor(data$sleepmeds_file, levels = c("0","1"))
levels(data$sleepmeds_file.factor) = c("No","Yes")

data$thyroidmeds_file.factor = factor(data$thyroidmeds_file, levels = c("0","1"))
levels(data$thyroidmeds_file.factor) = c("No","Yes")

data$topicalmeds_file.factor = factor(data$topicalmeds_file, levels = c("0","1"))
levels(data$topicalmeds_file.factor) = c("No","Yes")

data$triglyceridemeds_file.factor = factor(data$triglyceridemeds_file, levels = c("0","1"))
levels(data$triglyceridemeds_file.factor) = c("No","Yes")

data$vitaminmineralmeds_file.factor = factor(data$vitaminmineralmeds_file, levels = c("0","1"))
levels(data$vitaminmineralmeds_file.factor) = c("No","Yes")

data$vitamindmeds_file.factor = factor(data$vitamindmeds_file, levels = c("0","1"))
levels(data$vitamindmeds_file.factor) = c("No","Yes")

data$bpmeds_self.factor = factor(data$bpmeds_self, levels = c("0","1"))
levels(data$bpmeds_self.factor) = c("No","Yes")

data$diabetesmeds_self.factor = factor(data$diabetesmeds_self, levels = c("0","1"))
levels(data$diabetesmeds_self.factor) = c("No","Yes")

data$cholesterolmeds_self.factor = factor(data$cholesterolmeds_self, levels = c("0","1"))
levels(data$cholesterolmeds_self.factor) = c("No","Yes")

data$depressiontrt_self.factor = factor(data$depressiontrt_self, levels = c("0","1"))
levels(data$depressiontrt_self.factor) = c("No","Yes")

data$bpmeds.factor = factor(data$bpmeds, levels = c("0","1"))
levels(data$bpmeds.factor) = c("No","Yes")

data$diabetesmeds.factor = factor(data$diabetesmeds, levels = c("0","1"))
levels(data$diabetesmeds.factor) = c("No","Yes")

data$cholesterolmeds.factor = factor(data$cholesterolmeds, levels = c("0","1"))
levels(data$cholesterolmeds.factor) = c("No","Yes")

data$depressiontrt.factor = factor(data$depressiontrt, levels = c("0","1"))
levels(data$depressiontrt.factor) = c("No","Yes")

data$exercise.factor = factor(data$exercise, levels = c("0","3","2","1"))
levels(data$exercise.factor) = c("Less than 30 minutes of high intensity exercise in the past two weeks","More than 150 minutes of high intensity exercise in the past two weeks","Between 75 and 150 minutes of high intensitiy exercise in the past two weeks","Between 30 and 75 minutes of high intensity exercise in the past two weeks")

data$walkquartermile.factor = factor(data$walkquartermile, levels = c("6","5","0","4","3","2","1"))
levels(data$walkquartermile.factor) = c("very easy","somewhat easy","unable to do","not so easy","a little difficulty","some difficulty","a lot of difficulty")

data$walkonemile.factor = factor(data$walkonemile, levels = c("3","0","2","1"))
levels(data$walkonemile.factor) = c("very easy","difficult","somewhat easy","not so easy")

data$stairs10.factor = factor(data$stairs10, levels = c("6","5","4","2","0","3","1"))
levels(data$stairs10.factor) = c("very easy","somewhat easy","not so easy","some difficulty","unable to do","a little difficulty","a lot of difficulty")

data$stairs20.factor = factor(data$stairs20, levels = c("3","2","0","1"))
levels(data$stairs20.factor) = c("very easy","somewhat easy","difficult","not so easy")

data$liftcarry10.factor = factor(data$liftcarry10, levels = c("6","5","3","2","0","4","1"))
levels(data$liftcarry10.factor) = c("very easy","somewhat easy","a little difficulty","some difficulty","unable to do","not so easy","a lot of difficulty")

data$liftcarry20.factor = factor(data$liftcarry20, levels = c("3","2","0","1"))
levels(data$liftcarry20.factor) = c("very easy","somewhat easy","difficult","not so easy")

data$did400m.factor = factor(data$did400m, levels = c("1","0","3","2","4"))
levels(data$did400m.factor) = c("complete","started but stopped","stopped after 2:30 minute walk","excluded including incomplete 2:30 minute walk","not done for technical reasons/refused")

data$c400aid.factor = factor(data$c400aid, levels = c("0","1"))
levels(data$c400aid.factor) = c("2:30 minute walk without aid","Aid used for 2:30 minute walk")

data$uw150.factor = factor(data$uw150, levels = c("1","3","0","2"))
levels(data$uw150.factor) = c("completed","not done for technical reason/refused","started but stopped","excluded")

data$uw150aid.factor = factor(data$uw150aid, levels = c("0","1"))
levels(data$uw150aid.factor) = c("Usual-paced walk without aid","Aid used for usual-paced walk")

data$nwalk.factor = factor(data$nwalk, levels = c("1","0"))
levels(data$nwalk.factor) = c("Yes","No")

data$demo03.factor = factor(data$demo03, levels = c("1","5","4","6","2","3","7","8"))
levels(data$demo03.factor) = c("Married","Widowed","Divorced","Never married","Living with a partner","Separated","Refused","Dont know")

data$pf01.factor = factor(data$pf01, levels = c("0","1","8","7"))
levels(data$pf01.factor) = c("No","Yes","Dont know/Do not do","Refused")

data$pf01a.factor = factor(data$pf01a, levels = c("4","1","2","3","8","7"))
levels(data$pf01a.factor) = c("Unable to do","A little","Some","A lot","Dont know","Refused")

data$pf01b.factor = factor(data$pf01b, levels = c("3","2","1","8","7"))
levels(data$pf01b.factor) = c("VeryEasy","Somewhat easy","Not so easy","Dont know","Refused")

data$pf01c.factor = factor(data$pf01c, levels = c("0","1","8","7"))
levels(data$pf01c.factor) = c("No","Yes","Dont know/Do not do","Refused")

data$pf01d.factor = factor(data$pf01d, levels = c("3","2","1","8","7"))
levels(data$pf01d.factor) = c("VeryEasy","Somewhat easy","Not so easy","Dont know","Refused")

data$ap02.factor = factor(data$ap02, levels = c("0","1","8","7"))
levels(data$ap02.factor) = c("No","Yes","Dont know","Refused")

data$ap02g.factor = factor(data$ap02g, levels = c("0","1","8","7"))
levels(data$ap02g.factor) = c("No","Yes","Dont know","Refused")

data$ap03.factor = factor(data$ap03, levels = c("0","1","8","7"))
levels(data$ap03.factor) = c("No","Yes","Dont know","Refused")

data$ap10.factor = factor(data$ap10, levels = c("0","1","8","7"))
levels(data$ap10.factor) = c("No","Yes","Dont know","Refused")

data$ldcw05.factor = factor(data$ldcw05, levels = c("0","1"))
levels(data$ldcw05.factor) = c("No","Yes")

data$ldcw01.factor = factor(data$ldcw01, levels = c("1","0"))
levels(data$ldcw01.factor) = c("Yes","No")

data$ldcw02.factor = factor(data$ldcw02, levels = c("0","2","1"))
levels(data$ldcw02.factor) = c("No","ECG not done or not available","Yes")

data$ldcw03.factor = factor(data$ldcw03, levels = c("0","1"))
levels(data$ldcw03.factor) = c("No","Yes")

data$ldcw04.factor = factor(data$ldcw04, levels = c("0","1"))
levels(data$ldcw04.factor) = c("No","Yes")

data$ldcw11.factor = factor(data$ldcw11, levels = c("0","2","1"))
levels(data$ldcw11.factor) = c("No","Dont know","Yes")

data$ldcw12.factor = factor(data$ldcw12, levels = c("0","2","1"))
levels(data$ldcw12.factor) = c("No","Dont know","Yes")

data$ldcw13.factor = factor(data$ldcw13, levels = c("0","2","1"))
levels(data$ldcw13.factor) = c("No","Dont know","Yes")

data$ldcw14.factor = factor(data$ldcw14, levels = c("0","1","2"))
levels(data$ldcw14.factor) = c("No","Yes","Dont know")

data$ldcw15.factor = factor(data$ldcw15, levels = c("0","1","2"))
levels(data$ldcw15.factor) = c("No","Yes","Dont know")

data$ldcw16.factor = factor(data$ldcw16, levels = c("0","1","2"))
levels(data$ldcw16.factor) = c("No","Yes","Dont know")

data$mdcw27.factor = factor(data$mdcw27, levels = c("1","0"))
levels(data$mdcw27.factor) = c("Yes","No")

data$mdcw27a.factor = factor(data$mdcw27a, levels = c("9","99","77","1","3","5","4","7","6","8","2"))
levels(data$mdcw27a.factor) = c("Other","No time or tester","Refused","Exclusion criteria","Short of Breath","Knee pain","Felt faint","Calf pain","Hip pain","Back pain","Chest pain")

data$ldcw47.factor = factor(data$ldcw47, levels = c("1","0"))
levels(data$ldcw47.factor) = c("Yes","No")

data$ldcw47a.factor = factor(data$ldcw47a, levels = c("1","10","11","13","14","2","3","4","5","6","7","77","8","9","99"))
levels(data$ldcw47a.factor) = c("Exclusion criteria","Did not finish 2:30 walk","Elevated HR during 2:30 walk","Had symptoms during 2:30 walk","Fatigue/Exhaustion/Tiredness","Chest pain","Short of Breath","Felt faint","Knee pain","Hip pain","Calf pain","Refused","Back pain","Other","No time or tester")

data$mdhx3.factor = factor(data$mdhx3, levels = c("0","1","8","7"))
levels(data$mdhx3.factor) = c("No","Yes","Do not know","Refused")

data$mdhx4.factor = factor(data$mdhx4, levels = c("0","1","8","7"))
levels(data$mdhx4.factor) = c("No","Yes","Do not know","Refused")

data$mdhx5.factor = factor(data$mdhx5, levels = c("0","1","8","7"))
levels(data$mdhx5.factor) = c("No","Yes","Do not know","Refused")

data$mdhx6.factor = factor(data$mdhx6, levels = c("0","1","8","7"))
levels(data$mdhx6.factor) = c("No","Yes","Do not know","Refused")

data$mdhx7.factor = factor(data$mdhx7, levels = c("0","1","8","7"))
levels(data$mdhx7.factor) = c("No","Yes","Do not know","Refused")

data$mdhx7a.factor = factor(data$mdhx7a, levels = c("1","0","8","7"))
levels(data$mdhx7a.factor) = c("Yes","No","Do not know","Refused")

data$mdhx12.factor = factor(data$mdhx12, levels = c("0","1","8","7"))
levels(data$mdhx12.factor) = c("No","Yes","Do not know","Refused")

data$mdhx15.factor = factor(data$mdhx15, levels = c("0","1","8","7"))
levels(data$mdhx15.factor) = c("No","Yes","Do not know","Refused")

data$mdhx15a.factor = factor(data$mdhx15a, levels = c("1","0","8","7"))
levels(data$mdhx15a.factor) = c("Yes","No","Do not know","Refused")

data$mdhx16.factor = factor(data$mdhx16, levels = c("0","1","8","7"))
levels(data$mdhx16.factor) = c("No","Yes","Do not know","Refused")

data$mdhx16a.factor = factor(data$mdhx16a, levels = c("0","1","8","7"))
levels(data$mdhx16a.factor) = c("No","Yes","Do not know","Refused")

data$mdhx18.factor = factor(data$mdhx18, levels = c("0","1","8","7"))
levels(data$mdhx18.factor) = c("No","Yes","Do not know","Refused")

data$mdhx18a1.factor = factor(data$mdhx18a1, levels = c("0","1","8"))
levels(data$mdhx18a1.factor) = c("No","Yes","Do not know")

data$mdhx18a2.factor = factor(data$mdhx18a2, levels = c("0","1","8"))
levels(data$mdhx18a2.factor) = c("No","Yes","Do not know")

data$mdhx18a4.factor = factor(data$mdhx18a4, levels = c("0","1","8"))
levels(data$mdhx18a4.factor) = c("No","Yes","Do not know")

data$mdhx19.factor = factor(data$mdhx19, levels = c("0","1","8","7"))
levels(data$mdhx19.factor) = c("No","Yes","Do not know","Refused")

data$mdh19a1.factor = factor(data$mdh19a1, levels = c("0","1"))
levels(data$mdh19a1.factor) = c("No","Yes")

data$mdh19a2.factor = factor(data$mdh19a2, levels = c("0","1"))
levels(data$mdh19a2.factor) = c("No","Yes")

data$mdh19a3.factor = factor(data$mdh19a3, levels = c("0","1"))
levels(data$mdh19a3.factor) = c("No","Yes")

data$mdh19a4.factor = factor(data$mdh19a4, levels = c("0","1"))
levels(data$mdh19a4.factor) = c("No","Yes")

data$mdh19a5.factor = factor(data$mdh19a5, levels = c("0","1"))
levels(data$mdh19a5.factor) = c("No","Yes")

data$mdh19a6.factor = factor(data$mdh19a6, levels = c("0","1"))
levels(data$mdh19a6.factor) = c("No","Yes")

data$mdh19a7.factor = factor(data$mdh19a7, levels = c("0","1"))
levels(data$mdh19a7.factor) = c("No","Yes")

data$mdh19a8.factor = factor(data$mdh19a8, levels = c("0","1"))
levels(data$mdh19a8.factor) = c("No","Yes")

data$mdh19a9.factor = factor(data$mdh19a9, levels = c("0","1"))
levels(data$mdh19a9.factor) = c("No","Yes")

data$mdh19a10.factor = factor(data$mdh19a10, levels = c("0","1"))
levels(data$mdh19a10.factor) = c("No","Yes")

data$mdh19a11.factor = factor(data$mdh19a11, levels = c("0","1"))
levels(data$mdh19a11.factor) = c("No","Yes")

data$mdh19a12.factor = factor(data$mdh19a12, levels = c("0","1"))
levels(data$mdh19a12.factor) = c("No","Yes")

data$mdh19a13.factor = factor(data$mdh19a13, levels = c("0","1"))
levels(data$mdh19a13.factor) = c("No","Yes")

data$mdh19a14.factor = factor(data$mdh19a14, levels = c("0","1"))
levels(data$mdh19a14.factor) = c("No","Yes")

data$mdh19a15.factor = factor(data$mdh19a15, levels = c("0","1"))
levels(data$mdh19a15.factor) = c("No","Yes")

data$mdh19a16.factor = factor(data$mdh19a16, levels = c("0","1"))
levels(data$mdh19a16.factor) = c("No","Yes")

data$mdh19a17.factor = factor(data$mdh19a17, levels = c("0","1"))
levels(data$mdh19a17.factor) = c("No","Yes")

data$mdh19a18.factor = factor(data$mdh19a18, levels = c("0","1"))
levels(data$mdh19a18.factor) = c("No","Yes")

data$mdh19a19.factor = factor(data$mdh19a19, levels = c("0","1"))
levels(data$mdh19a19.factor) = c("No","Yes")

data$mdhx24.factor = factor(data$mdhx24, levels = c("0","1","8","7"))
levels(data$mdhx24.factor) = c("No","Yes","Do not know","Refused")

data$mdhx25.factor = factor(data$mdhx25, levels = c("0","1","8","7"))
levels(data$mdhx25.factor) = c("No","Yes","Do not know","Refused")

data$cvrs6.factor = factor(data$cvrs6, levels = c("0","1","8","7"))
levels(data$cvrs6.factor) = c("No","Yes","Do not know","Refused")

data$pe18.factor = factor(data$pe18, levels = c("0","1","2","8"))
levels(data$pe18.factor) = c("No rales","Rales at bases","Rales more than at bases","Unknown")

data$pe67f.factor = factor(data$pe67f, levels = c("1","0"))
levels(data$pe67f.factor) = c("Yes","No")

data$pe67fm.factor = factor(data$pe67fm, levels = c("555","999","666","888","777"))
levels(data$pe67fm.factor) = c("555 - Physical problems","999 - Technical Problems","666 - Mental problems","888 - Refused but could do","777 - Both Physical and Mental problems")

data$pe83.factor = factor(data$pe83, levels = c("1","2","8"))
levels(data$pe83.factor) = c("Trace pitting","Very obvious pitting","Unknown")

data$sex.factor = factor(data$sex, levels = c("M","F"))
levels(data$sex.factor) = c("Male","Female")

