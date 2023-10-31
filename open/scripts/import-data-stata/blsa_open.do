clear
import delimited "../data-csv/blsa_open.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "BLSA Visit Number"

label variable abi "Ankle-Brachial Index"

label variable abi2cat "Peripheral Artery Disease ABI Classification"
label define _Q6nObG61XsxK 0 "PAD Absent: ABI greater than or equal to 0.9" 1 "PAD Present: ABI < 0.9"
label values abi2cat _Q6nObG61XsxK

label variable pad "Peripheral Artery Disease"
label define _SMZCX0DsUp9q 0 "PAD Absent" 1 "PAD Present"
label values pad _SMZCX0DsUp9q

label variable weight "Weight (kg)"

label variable weightloss "Weight Loss Since Previous Visit (kg)"

label variable intweightloss "Intentional Weight Loss Since Previous Visit (kg)"
label define _PFX3Bt6SG0y2 1 "Intentional Weight Loss" 0 "Unintentional Weight Loss"
label values intweightloss _PFX3Bt6SG0y2

label variable height "Height (cm)"

label variable bsa "Body Surface Area using Du Bois formula (m^2)"

label variable bmi "Body Mass Index (kg/m^2)"

label variable obesity4cat "CDC Obesity Classification (4-category)"
label define _wT7G1AJ11DS4 3 "Overweight: 25 <= BMI < 30 kg/m^2" 2 "Normal: 18.5 <= BMI < 25 kg/m^2" 4 "Obese: BMI >= 30 kg/m^2" 1 "Underweight: BMI < 18.5 kg/m^2"
label values obesity4cat _wT7G1AJ11DS4

label variable obesity6cat "CDC Obesity Classification (6-category)"
label define _I9Ti7Icb4X6e 3 "Overweight: 25 less than or equal to BMI < 30 kg/m^2" 2 "Normal: 18.5 less than or equal to BMI < 25 kg/m^2" 4 "Class 1 Obesity: 30 less than or equal to BMI < 35 kg/m^2" 5 "Class 2 Obesity: 35 less than or equal to BMI < 40 kg/m^2" 6 "Class 3 Obesity: BMI >= 40 kg/m^2" 1 "Underweight: BMI < 18.5 kg/m^2"
label values obesity6cat _I9Ti7Icb4X6e

label variable waistcirc "Upper Waist Circumference (cm)"

label variable lowerwaistcirc "Lower Waist Circumference (cm)"

label variable waistdiam "Waist Diameter (cm)"

label variable waistdepth "Waist Depth (cm)"

label variable bodytemp "Oral Body Temperature (Fahrenheit)"

label variable hipcirc "Hip (buttocks) Circumference (cm)"

label variable tibialength "Right Tibia Length (cm)"

label variable bicepskinfold "Right Bicep Skinfold Thickness (cm)"

label variable respirations "Respirations (breaths/min)"

label variable pulse "Pulse (beats/min)"

label variable waisthip "Waist-to-Hip Ratio"

label variable waistheight "Waist-to-Height Ratio"

label variable htn_self "Hypertension Status (using self-reported physician DX and BP medication use)"
label define _OcIpfrnx844v 1 "Self-Reported History of HTN" 0 "No Reported History of HTN"
label values htn_self _OcIpfrnx844v

label variable sbp "Systolic Blood Pressure (mmHg)"

label variable dbp "Diastolic Blood Pressure (mmHg)"

label variable bpjnc7 "JNC 7 BP Classification"
label define _oAIexwqPRo5Z 0 "Normal" 1 "Pre-HTN" 2 "Stage I HTN" 3 "Stage II HTN"
label values bpjnc7 _oAIexwqPRo5Z

label variable bp2cat "Elevated BP Classification"
label define _gqg3iEf7hfe9 0 "Normal: SBP < 130 and DBP < 80" 1 "Elevated: SBP greater than or equal to 130 or DBP greater than or equal to 80"
label values bp2cat _gqg3iEf7hfe9

label variable htn "Hypertension Status"
label define _T9c22uO68nkA 0 "Non-Hypertensive" 1 "Hypertensive"
label values htn _T9c22uO68nkA

label variable icrose "Classic Symptoms of Intermittent Claudication as Defined by Rose"
label define _SX1H4ZBV7Ly6 0 "Intermittent Claudication Sympoms Absent" 1 "Intermittent Claudication Sympoms Present"
label values icrose _SX1H4ZBV7Ly6

label variable cesd01 "I was bothered by things that usually do not bother me"
label define _aRVD9up9oj 0 "Rarely or None of the Time" 1 "Some or Little of the Time" 2 "Moderately or Much of the time" 3 "Most or Almost All the Time" 5 "None"
label values cesd01 _aRVD9up9oj

label variable cesd02 "I did not feel like eating; my appetite was poor"
label define _PACDzF0x1B 0 "Rarely or None of the Time" 1 "Some or Little of the Time" 2 "Moderately or Much of the time" 3 "Most or Almost All the Time" 5 "None"
label values cesd02 _PACDzF0x1B

label variable cesd03 "I felt that I could not shake off the blues even with the help from my family and friends"
label define _BQPeFvkQAA 0 "Rarely or None of the Time" 1 "Some or Little of the Time" 2 "Moderately or Much of the time" 3 "Most or Almost All the Time" 5 "None"
label values cesd03 _BQPeFvkQAA

label variable cesd04 "I felt that I was just as good as other people"
label define _lGLeAU4EoV 0 "Most or Almost All the Time" 3 "Rarely or None of the Time" 1 "Moderately or Much of the time" 2 "Some or Little of the Time" 9 "None" 5 "None"
label values cesd04 _lGLeAU4EoV

label variable cesd05 "I had trouble keeping my mind on what I was doing"
label define _DxyX6jXvuY 0 "Rarely or None of the Time" 1 "Some or Little of the Time" 2 "Moderately or Much of the time" 3 "Most or Almost All the Time" 5 "None" 9 "None"
label values cesd05 _DxyX6jXvuY

label variable cesd06 "I felt depressed"
label define _RkILE22lVv 0 "Rarely or None of the Time" 1 "Some or Little of the Time" 2 "Moderately or Much of the time" 3 "Most or Almost All the Time" 9 "None" 5 "None"
label values cesd06 _RkILE22lVv

label variable cesd07 "I felt that everything I did was an effort"
label define _lOmPsdq8qm 0 "Rarely or None of the Time" 1 "Some or Little of the Time" 2 "Moderately or Much of the time" 3 "Most or Almost All the Time" 5 "None"
label values cesd07 _lOmPsdq8qm

label variable cesd08 "I felt hopeful about the future"
label define _w9Um1t629j 0 "Most or Almost All the Time" 1 "Moderately or Much of the time" 3 "Rarely or None of the Time" 2 "Some or Little of the Time" 5 "None"
label values cesd08 _w9Um1t629j

label variable cesd09 "I thought my life had been a failure"
label define _MPwSJct5J4 0 "Rarely or None of the Time" 1 "Some or Little of the Time" 2 "Moderately or Much of the time" 3 "Most or Almost All the Time" 5 "None" 9 "None"
label values cesd09 _MPwSJct5J4

label variable cesd10 "I felt fearful"
label define _PKYSk2wks5 0 "Rarely or None of the Time" 1 "Some or Little of the Time" 2 "Moderately or Much of the time" 3 "Most or Almost All the Time" 5 "None"
label values cesd10 _PKYSk2wks5

label variable cesd11 "My sleep was restless"
label define _CkjdpakTY2 0 "Rarely or None of the Time" 1 "Some or Little of the Time" 2 "Moderately or Much of the time" 3 "Most or Almost All the Time" 9 "None" 5 "None"
label values cesd11 _CkjdpakTY2

label variable cesd12 "I was happy"
label define _lChobcYEQ6 0 "Most or Almost All the Time" 1 "Moderately or Much of the time" 2 "Some or Little of the Time" 3 "Rarely or None of the Time" 5 "None"
label values cesd12 _lChobcYEQ6

label variable cesd13 "I talked less than usual"
label define _cNxljOEmeX 0 "Rarely or None of the Time" 1 "Some or Little of the Time" 2 "Moderately or Much of the time" 3 "Most or Almost All the Time" 9 "None" 5 "None"
label values cesd13 _cNxljOEmeX

label variable cesd14 "I felt lonely"
label define _PQuY90xH87 0 "Rarely or None of the Time" 1 "Some or Little of the Time" 2 "Moderately or Much of the time" 3 "Most or Almost All the Time" 9 "None" 5 "None"
label values cesd14 _PQuY90xH87

label variable cesd15 "People were unfriendly"
label define _e4fEEsrJki 0 "Rarely or None of the Time" 1 "Some or Little of the Time" 2 "Moderately or Much of the time" 3 "Most or Almost All the Time" 5 "None"
label values cesd15 _e4fEEsrJki

label variable cesd16 "I enjoyed life"
label define _p8dODD78EC 0 "Most or Almost All the Time" 1 "Moderately or Much of the time" 3 "Rarely or None of the Time" 2 "Some or Little of the Time" 5 "None" 4 "None"
label values cesd16 _p8dODD78EC

label variable cesd17 "I had crying spells"
label define _xebC3mc2U4 0 "Rarely or None of the Time" 1 "Some or Little of the Time" 2 "Moderately or Much of the time" 3 "Most or Almost All the Time" 5 "None"
label values cesd17 _xebC3mc2U4

label variable cesd18 "I felt sad"
label define _a0QhWziNfd 0 "Rarely or None of the Time" 1 "Some or Little of the Time" 2 "Moderately or Much of the time" 3 "Most or Almost All the Time" 5 "None"
label values cesd18 _a0QhWziNfd

label variable cesd19 "I felt people disliked me"
label define _alpVxFEv2F 0 "Rarely or None of the Time" 1 "Some or Little of the Time" 2 "Moderately or Much of the time" 3 "Most or Almost All the Time" 5 "None"
label values cesd19 _alpVxFEv2F

label variable cesd20 "I could not get going"
label define _jhvlx8jwJy 0 "Rarely or None of the Time" 1 "Some or Little of the Time" 2 "Moderately or Much of the time" 3 "Most or Almost All the Time" 5 "None"
label values cesd20 _jhvlx8jwJy

label variable cesd_der "CESD Depressive Symptoms (CESD) Score"

label variable cesd_der16 "CESD Symptoms of Depression (CESD 16+)"
label define _im6K35N0Os 0 "Symptoms Absent" 1 "Symptoms Present"
label values cesd_der16 _im6K35N0Os

label variable cesd_der20 "CESD Significant Symptoms of Depression (CESD 20+)"
label define _fxY1XlspKq 0 "Significant Symptoms Absent" 1 "Significant Symptoms Present"
label values cesd_der20 _fxY1XlspKq

label variable depression "Depression (Depressive Symptoms or Treatment/Counseling)"
label define _CSqlv2Uwmw 0 "Depression Absent" 1 "Depression Present"
label values depression _CSqlv2Uwmw

label variable cogn_status "4-level Cognitive Status at visit"
label define _ah8lPCCVQC 0 "Normal" 1 "MCI" 2 "Dementia" 3 "Impaired Not-MCI/Dem"
label values cogn_status _ah8lPCCVQC

label variable last_cogn_status "4-level Cognitive Status at last case conference"
label define _fr5D23xBS4 0 "Normal" 2 "Dementia" 1 "MCI" 3 "Impaired Not-MCI/Dem"
label values last_cogn_status _fr5D23xBS4

label variable last_cogn_status_dementia "Dementia diagnosis indicator at last case conference"
label define _FUM68VHjIc 0 "Non-Dementia" 1 "Dementia"
label values last_cogn_status_dementia _FUM68VHjIc

label variable last_cogn_status_alzdis "Alzheimers Disease (AD) diagnosis at last case conference"
label define _UCqdynv4Kb 0 "non-AD" 1 "Dementia due to Alzheimers"
label values last_cogn_status_alzdis _UCqdynv4Kb

label variable last_cogn_status_type1 "19-Level Primary DX Category at last case conference"
label define _B31wVF16B3 0 "Normal" 2 "Probable AD" 4 "Vascular dementia" 3 "Possible AD" 9 "Unspecified" 5 "Consistent w/ AD" 8 "PD" 14 "Dementia w/ lewy body" 6 "Depression" 17 "Vascular without dementia" 10 "Other primary DX" 18 "Other Dementia" 15 "Frontotemporal dementia" 7 "Alcohol abuse" 1 "Definite AD" 11 "Other secondary DX" 12 "Normal pressure hydrocephalus" 13 "Hippocampal sclerosis" 19 "Unknown"
label values last_cogn_status_type1 _B31wVF16B3

label variable last_cogn_status_type2 "19-Level Secondary DX Category at last case conference"
label define _s9uOFThDFS 0 "Normal" 1 "Definite AD" 2 "Probable AD" 3 "Possible AD" 4 "Vascular dementia" 5 "Consistent w/ AD" 6 "Depression" 7 "Alcohol abuse" 8 "PD" 9 "Unspecified" 10 "Other primary DX" 11 "Other secondary DX" 12 "Normal pressure hydrocephalus" 13 "Hippocampal sclerosis" 14 "Dementia w/ lewy body" 15 "Frontotemporal dementia" 17 "Vascular without dementia" 18 "Other Dementia" 19 "Unknown"
label values last_cogn_status_type2 _s9uOFThDFS

label variable last_cogn_status_caseconf "Indicator of Case Conferencing for Cognitive Status Determination"
label define _bVx92UH4wK 0 "Participant has never been case-conferenced" 1 "Participant has been case-conferenced"
label values last_cogn_status_caseconf _bVx92UH4wK

label variable visitmonth "Month of Visit"
label define _fYVgTuhvNcwt 6 "June" 8 "August" 3 "March" 5 "May" 7 "July" 10 "October" 4 "April" 9 "September" 11 "November" 1 "January" 2 "February" 12 "December"
label values visitmonth _fYVgTuhvNcwt

label variable visityear "Year of Visit"

label variable daysfromv1 "Days Since Visit 1 Baseline"

label variable yearsfromv1 "Years Since Visit 1 Baseline"

label variable yearsfromprevvisit "Years Since Previous Visit"

label variable visitseq "Sequential Visit Number"

label variable numvisits "Number of Visits"

label variable visittype "Type of Visit"
label define _V4bhL60w1fNe 1 "Clinical" 2 "Home" 3 "Clinical + Home Split Visit"
label values visittype _V4bhL60w1fNe

label variable laststatus "Last Known Status"
label define _sQGpDFFAV1g1 2 "Deceased" 1 "On Study" 3 "Withdrawn" 4 "Terminated"
label values laststatus _sQGpDFFAV1g1

label variable v1tostatusdays "Days from Visit 1 to Last Identified Study Status Date"

label variable v1todeathdays "Days from Visit 1 to Death (if known death)"

label variable age "Age at time of visit (years)"

label variable baselineage "Age at baseline visit (years)"

label variable sex "Sex (M, F)"

label variable male "Male Indicator (1=M, 0=F)"
label define _LE12h08KHRcl 1 "Male" 0 "Female"
label values male _LE12h08KHRcl

label variable race "Race Category (White, Black or African American, American Indian or Alaskan Native, Asian or Pacific Islander, Hispanic, More than one race)"
label define _vjv4Qbzx66 6 "White" 8 "Unknown or not reported" 3 "Black or African American" 1 "Other Asian or Pacific Islander" 5 "Hispanic" 2 "American Indian or Alaskan Native" 9 "Asian" 7 "More than one race"
label values race _vjv4Qbzx66

label variable race3cat "Race Category (White, Black, Other)"
label define _m5vI32609HG6 1 "White" 2 "Black or African American" 3 "Other"
label values race3cat _m5vI32609HG6

label variable black "Black Race Indicator (1=Black, 0=Non-Black)"
label define _HLhks73TZHTD 0 "NonBlack" 1 "Black"
label values black _HLhks73TZHTD

label variable ethnicity "Spanish Hispanic or Latino Ethnicity"
label define _h7ddIRwAr5au 0 "Not reported / Unknown" 1 "Not Hispanic or Latino" 2 "Hispanic or Latino"
label values ethnicity _h7ddIRwAr5au

label variable borninus "Born in the United States"
label define _VCD1DlJ2pweh 1 "Born In US" 0 "Born Outside US"
label values borninus _VCD1DlJ2pweh

label variable englishfirstlang "English was First Language"
label define _Fe7lY34Xj05V 1 "Yes" 0 "No"
label values englishfirstlang _Fe7lY34Xj05V

label variable maritalstatus "Marital Status"
label define _VdyJ62Ao699N 1 "Married" 5 "Widowed" 4 "Divorced" 6 "Never married" 2 "Living with a partner" 3 "Separated" 7 "Refused" 8 "Don't know"
label values maritalstatus _VdyJ62Ao699N

label variable householdsize "Size of Household"
label define _SRuPC2R33hi4 1 "1 other" 0 "Lives alone" 2 "2 others" 3 "3 or more others" 8 "Don't know" 7 "Refused"
label values householdsize _SRuPC2R33hi4

label variable housingtype "Type of Housing"
label define _ZTvT1ue2xC4f 1 "Single family home" 2 "Co-op, condominium, apartment" 3 "Continuing care community" 4 "Assisted living" 5 "Long term care facility" 8 "Don't know" 7 "refused"
label values housingtype _ZTvT1ue2xC4f

label variable smkstat "Current smoking status (3-level)"
label define _K9KhtD1w9f4m 0 "Never smoked" 1 "Former Smoker" 2 "Current Smoker"
label values smkstat _K9KhtD1w9f4m

label variable smokehx "Smoking history (4-level)"
label define _i03wMlL7OQmU 0 "Never smoked" 1 "Quit 10+ yrs ago" 3 "Current smoker" 2 "Quit <10 yrs ago"
label values smokehx _i03wMlL7OQmU

label variable smoker "Current smoking status (2-level)"
label define _B485uu05yqaO 0 "Non-Smoker" 1 "Smoker"
label values smoker _B485uu05yqaO

label variable alcoholhx "Drinking history (4-level)"
label define _hdsQl1XFL9 2 "Current Drinker" 0 "Non-Drinker" 1 "Former Drinker"
label values alcoholhx _hdsQl1XFL9

label variable drinker "Current drinking status (2-level)"
label define _k3vviASsMu 1 "Drinker" 0 "Non-Drinker"
label values drinker _k3vviASsMu

label variable alcohol "Drinks per week"
label define _oEtwcNNBCT 0 "less than one" 1 "1-3 drinks" 2 "4-7 drinks" 3 "8-14 drinks" 4 "more than 14"
label values alcohol _oEtwcNNBCT

label variable edyrsdegree "Highest grade in school completed by the participant defined by final degree"

label variable education "Years of education as defined by final degree"
label define _Xw74aUOacwK6 18 "Master's degree" 16 "four year college" 20 "MD or PhD" 12 "high school (or GED equivalent)" 14 "two year college / Associate's degree" 21 "multiple graduate degrees" 19 "Law degree" 0 "no formal schooling" 77 "refused" 88 "unknown"
label values education _Xw74aUOacwK6

label variable educ3cat "Education Category (<HS, HS, HS+)"
label define _A55uwt7pkIIt 2 ">High School" 1 "High School/GED" 0 "<High School"
label values educ3cat _A55uwt7pkIIt

label variable educ5cat "Education Category (5-Level)"
label define _TnmnAB9MN0TU 4 "Post college" 3 "College grad" 1 "High school" 2 "Some college" 0 "Less than high school"
label values educ5cat _TnmnAB9MN0TU

label variable gluload "Sugar concentration for OGTT (grams)"

label variable sample_dilution "Diluation factor"

label variable glucose0_1964 "Fasting Glucose 1964-1977 (mg/dl)"

label variable glucose5_1964 "OGTT Glucose at 5-mins 1964-1977 (mg/dl)"

label variable glucose10_1964 "OGTT Glucose at 10-mins 1964-1977 (mg/dl)"

label variable glucose15_1964 "OGTT Glucose at 15-mins 1964-1977 (mg/dl)"

label variable glucose20_1964 "OGTT Glucose at 20-mins 1964-1977 (mg/dl)"

label variable glucose40_1964 "OGTT Glucose at 40-mins 1964-1977 (mg/dl)"

label variable glucose60_1964 "OGTT Glucose at 60-mins 1964-1977 (mg/dl)"

label variable glucose80_1964 "OGTT Glucose at 80-mins 1964-1977 (mg/dl)"

label variable glucose100_1964 "OGTT Glucose at 100-mins 1964-1977 (mg/dl)"

label variable glucose120_1964 "OGTT Glucose at 120-mins 1964-1977 (mg/dl)"

label variable glucose0_1977 "Fasting Glucose 1977-2000 (mg/dl)"

label variable glucose5_1977 "OGTT Glucose at 5-mins 1977-2000 (mg/dl)"

label variable glucose10_1977 "OGTT Glucose at 10-mins 1977-2000 (mg/dl)"

label variable glucose15_1977 "OGTT Glucose at 15-mins 1977-2000 (mg/dl)"

label variable glucose20_1977 "OGTT Glucose at 20-mins 1977-2000 (mg/dl)"

label variable glucose40_1977 "OGTT Glucose at 40-mins 1977-2000 (mg/dl)"

label variable glucose60_1977 "OGTT Glucose at 60-mins 1977-2000 (mg/dl)"

label variable glucose80_1977 "OGTT Glucose at 80-mins 1977-2000 (mg/dl)"

label variable glucose100_1977 "OGTT Glucose at 100-mins 1977-2000 (mg/dl)"

label variable glucose120_1977 "OGTT Glucose at 120-mins 1977-2000 (mg/dl)"

label variable glucose0_2001 "Fasting Glucose 2001-current (mg/dl)"

label variable glucose5_2001 "OGTT Glucose at 5-mins 2001-current (mg/dl)"

label variable glucose10_2001 "OGTT Glucose at 10-mins 2001-current (mg/dl)"

label variable glucose15_2001 "OGTT Glucose at 15-mins 2001-current (mg/dl)"

label variable glucose20_2001 "OGTT Glucose at 20-mins 2001-current (mg/dl)"

label variable glucose40_2001 "OGTT Glucose at 40-mins 2001-current (mg/dl)"

label variable glucose60_2001 "OGTT Glucose at 60-mins 2001-current (mg/dl)"

label variable glucose80_2001 "OGTT Glucose at 80-mins 2001-current (mg/dl)"

label variable glucose100_2001 "OGTT Glucose at 100-mins 2001-current (mg/dl)"

label variable glucose120_2001 "OGTT Glucose at 120-mins 2001-current (mg/dl)"

label variable glucose0 "Fasting Glucose calibrated (mg/dl)"

label variable glucose0_3cat "OGTT Glucose Categorization at 0-mins, calibrated (Norm, At Risk, Diab)"
label define _xhP425hF8SA2 0 "Normal Glucose Tolerance" 1 "Pre-Diabetes" 2 "Type 2 Diabetes"
label values glucose0_3cat _xhP425hF8SA2

label variable glucose20 "OGTT Glucose at 20-mins calibrated (mg/dl)"

label variable glucose40 "OGTT Glucose at 40-mins calibrated (mg/dl)"

label variable glucose60 "OGTT Glucose at 60-mins calibrated (mg/dl)"

label variable glucose80 "OGTT Glucose at 80-mins calibrated (mg/dl)"

label variable glucose100 "OGTT Glucose at 100-mins calibrated (mg/dl)"

label variable glucose120 "OGTT Glucose at 120-mins calibrated (mg/dl)"

label variable glucose120_3cat "OGTT Glucose Categorization at 120-mins, calibrated (Norm, At Risk, Diab)"
label define _RLsOvNpL0GZ2 0 "Normal Glucose Tolerance" 1 "Pre-Diabetes" 2 "Type 2 Diabetes"
label values glucose120_3cat _RLsOvNpL0GZ2

label variable insulin0 "OGTT Insulin at 0-mins (碌U/ml)"

label variable insulin5 "OGTT Insulin at 5-mins (碌U/ml)"

label variable insulin10 "OGTT Insulin at 10-mins (碌U/ml)"

label variable insulin15 "OGTT Insulin at 15-mins (碌U/ml)"

label variable insulin20 "OGTT Insulin at 20-mins (碌U/ml)"

label variable insulin40 "OGTT Insulin at 40-mins (碌U/ml)"

label variable insulin60 "OGTT Insulin at 60-mins (碌U/ml)"

label variable insulin80 "OGTT Insulin at 80-mins (碌U/ml)"

label variable insulin100 "OGTT Insulin at 100-mins (碌U/ml)"

label variable insulin120 "OGTT Insulin at 120-mins (碌U/ml)"

label variable hba1c "Plasma Hemoglobin HbA1c (%)"

label variable hba1c3cat "Plasma Hemoglobin HbA1c (%) Categorization (Norm, At Risk, Diab)"
label define _gw019HqluSlM 1 "Pre-Diabetes" 0 "Normal Glucose Tolerance" 2 "Type 2 Diabetes"
label values hba1c3cat _gw019HqluSlM

label variable glucose3cat "Diabetes Categorization (Norm, At Risk, Diab)"
label define _F36eU77bnBpY 0 "Normal Glucose Tolerance" 1 "Pre-Diabetes" 2 "Type 2 Diabetes"
label values glucose3cat _F36eU77bnBpY

label variable diab3cat "Diabetes Categorization (Norm, At Risk, Diab)"
label define _v5516ManUtC6 1 "Pre-Diabetes" 2 "Type 2 Diabetes" 0 "Normal Glucose Tolerance"
label values diab3cat _v5516ManUtC6

label variable ldl "LDL Cholesterol (mg/dL)"

label variable ldl5cat "ATP III Fasting LDL Categorization"
label define _TG0cK6Y6LJ80 1 "Optimal: LDL < 100 mg/dL" 2 "Near/Above Optimal: 100 less than or equal to LDL < 130 mg/dL" 3 "Borderline High: 130 less than or equal to LDL < 160 mg/dL" 4 "High: 160 less than or equal to LDL < 190 mg/dL" 5 "Very High: LDL ≥ 190 mg/dL"
label values ldl5cat _TG0cK6Y6LJ80

label variable hdl "HDL Cholesterol (mg/dL)"

label variable hdl3cat "ATP III Fasting HDL Categorization"
label define _Cvv52xCOTFm1 3 "High: HDL ≥ 60 mg/dL" 2 "Normal: 40 less than or equal to HDL < 60 (males); 50 less than or equal to HDL < 60 mg/dL (females)" 1 "Low: HDL < 40 (males); HDL < 50 mg/dL (females)"
label values hdl3cat _Cvv52xCOTFm1

label variable trigs "Triglycerides (mg/dL)"

label variable trigs4cat "ATP III Fasting Triglyceride Categorization"
label define _dpiot716AO8u 1 "Normal: Trigs < 150 mg/dL" 2 "Borderline High: 150 <= Trigs < 200 mg/dL" 3 "High: 200 <= Trigs < 500 mg/dL" 4 "Very High: Trigs >= 500 mg/dL"
label values trigs4cat _dpiot716AO8u

label variable hgb "Hemoglobin (g/dL)"

label variable anemia "Anemia Classification"
label define _wdVaAsUTEb 0 "Normal Hgb: Hgb greater than or equal to 40 (males); Hgb greater than or equal to 12 g/dL (females)" 1 "Anemia: Hgb < 13 (males); Hgb < 12 g/dL (females)"
label values anemia _wdVaAsUTEb

label variable mi_hx_ever "Self-Reported History of MI"
label define _Pe4l3bE6fCJK 0 "No" 1 "Yes"
label values mi_hx_ever _Pe4l3bE6fCJK

label variable hf_hx_ever "Self-Reported History of HF"
label define _GeCg888OpmOq 0 "No" 1 "Yes"
label values hf_hx_ever _GeCg888OpmOq

label variable angina_hx_ever "Self-Reported History of Angina"
label define _pOw9A6Vy6RyD 0 "No" 1 "Yes"
label values angina_hx_ever _pOw9A6Vy6RyD

label variable cld_hx_ever "Self-Reported History of CLD"
label define _FC1u3B500v91 0 "No" 1 "Yes"
label values cld_hx_ever _FC1u3B500v91

label variable asthma_hx_ever "Self-Reported History of Asthma"
label define _EDysAIYhdxi9 0 "No" 1 "Yes"
label values asthma_hx_ever _EDysAIYhdxi9

label variable liver_dz_hx_ever "Self-Reported History of Liver Disease"
label define _q4i19V10M5Bm 0 "No" 1 "Yes"
label values liver_dz_hx_ever _q4i19V10M5Bm

label variable hepatitis_hx_ever "Self-Reported History of Hepatitis"
label define _aOk34Zw164v7 0 "No" 1 "Yes"
label values hepatitis_hx_ever _aOk34Zw164v7

label variable hiv_hx_ever "Self-Reported History of HIV/AIDS"
label define _hLpGF5BCcm13 0 "No" 1 "Yes"
label values hiv_hx_ever _hLpGF5BCcm13

label variable ckd_hx_ever "Self-Reported History of CKD"
label define _DyFL586Dj2j2 0 "No" 1 "Yes"
label values ckd_hx_ever _DyFL586Dj2j2

label variable stroke_hx_ever "Self-Reported History of Stroke"
label define _cJte79oQjMpF 0 "No" 1 "Yes"
label values stroke_hx_ever _cJte79oQjMpF

label variable tia_hx_ever "Self-Reported History of TIA"
label define _T14Nyh5MvtK3 0 "No" 1 "Yes"
label values tia_hx_ever _T14Nyh5MvtK3

label variable pn_hx_ever "Self-Reported History of PN"
label define _T855O02KO7aP 0 "No" 1 "Yes"
label values pn_hx_ever _T855O02KO7aP

label variable htn_hx_ever "Self-Reported History of HTN"
label define _B1fLaJD4QTru 1 "Yes" 0 "No"
label values htn_hx_ever _B1fLaJD4QTru

label variable dm_hx_ever "Self-Reported History of DM"
label define _vs20f0J1uQcn 0 "No" 1 "Yes"
label values dm_hx_ever _vs20f0J1uQcn

label variable hld_hx_ever "Self-Reported History of HLD"
label define _XTXM391tQ30F 1 "Yes" 0 "No"
label values hld_hx_ever _XTXM391tQ30F

label variable vascular_proc_hx_ever "Self-Reported History of Vascular Procedures"
label define _beOf3GcUHb 0 "No" 1 "Yes"
label values vascular_proc_hx_ever _beOf3GcUHb

label variable cancer_hx_ever "Self-Reported History of Cancer"
label define _a03y9FS4KJLC 0 "No" 1 "Yes"
label values cancer_hx_ever _a03y9FS4KJLC

label variable arthritis_hx_ever "Self-Reported History of Arthritis"
label define _seuYpwRlAIKb 1 "Yes" 0 "No"
label values arthritis_hx_ever _seuYpwRlAIKb

label variable stenosis_hx_ever "Self-Reported History of Spinal Stenosis"
label define _rvCR580L40Se 0 "No" 1 "Yes"
label values stenosis_hx_ever _rvCR580L40Se

label variable osteoporosis_hx_ever "Self-Reported History of Osteoporosis"
label define _GGvRh74GIZD0 0 "No" 1 "Yes"
label values osteoporosis_hx_ever _GGvRh74GIZD0

label variable ctd_hx_ever "Self-Reported History of CTD"
label define _SBj7CuwBUYt9 0 "No" 1 "Yes"
label values ctd_hx_ever _SBj7CuwBUYt9

label variable parkinson_hx_ever "Self-Reported History of Parkinson"
label define _d373JAZe7sBl 0 "No" 1 "Yes"
label values parkinson_hx_ever _d373JAZe7sBl

label variable pad_hx_ever "Self-Reported History of PAD"
label define _I8VF5FrNy0e8 0 "No" 1 "Yes"
label values pad_hx_ever _I8VF5FrNy0e8

label variable pvd_hx_ever "Self-Reported History of Varicose Veins"
label define _ZwZQnCo349p0 0 "No" 1 "Yes"
label values pvd_hx_ever _ZwZQnCo349p0

label variable cataract1_hx_ever "Self-Reported History of Cataracts"
label define _QyVzszlIe2 0 "No" 1 "Yes"
label values cataract1_hx_ever _QyVzszlIe2

label variable cataract2_hx_ever "Self-Reported History of Cataracts (both eyes)"
label define _Z18Uw65blV 1 "Yes" 0 "No"
label values cataract2_hx_ever _Z18Uw65blV

label variable cataract_surg_hx_ever "Self-Reported History of Cataract Procedures"
label define _El758VM5Cj 0 "No" 1 "Yes"
label values cataract_surg_hx_ever _El758VM5Cj

label variable ulcer_hx_ever "Self-Reported History of Ulcer"
label define _d774hN16Uj19 0 "No" 1 "Yes"
label values ulcer_hx_ever _d774hN16Uj19

label variable depression_hx_ever "Self-Reported History of Depression"
label define _IQYDQ9cdcS 0 "No" 1 "Yes"
label values depression_hx_ever _IQYDQ9cdcS

label variable covid_hx_ever "Self-Reported History of COVID-19"
label define _yRm03QhEMwgT 0 "No" 1 "Yes"
label values covid_hx_ever _yRm03QhEMwgT

label variable antacidmed_file "Antacid Medication Brought to Clinic"
label define _kY1pOg4glD 0 "No" 1 "Yes"
label values antacidmed_file _kY1pOg4glD

label variable anticoagmed_file "Anticoagulant Medication Brought to Clinic"
label define _ecYakheKb8 0 "No" 1 "Yes"
label values anticoagmed_file _ecYakheKb8

label variable antihistaminemed_file "Antihistamine Medication Brought to Clinic"
label define _ZCAhDFGc9e 0 "No" 1 "Yes"
label values antihistaminemed_file _ZCAhDFGc9e

label variable antipsychoticmeds "Antipsychotic Medication Brought to Clinic"
label define _PXHu3ZRGcXdb 0 "No" 1 "Yes"
label values antipsychoticmeds _PXHu3ZRGcXdb

label variable antiviralabxmeds "Antivirals and Antibiotics Medication Brought to Clinic"
label define _XMXWVhk2NhPp 0 "No" 1 "Yes"
label values antiviralabxmeds _XMXWVhk2NhPp

label variable asthmameds_file "Asthma Medication Brought to Clinic"
label define _ItBFNyKb75rz 0 "No" 1 "Yes"
label values asthmameds_file _ItBFNyKb75rz

label variable bpmeds_file "BP Medication Brought to Clinic"
label define _VTc3bJJEH7Cr 0 "No" 1 "Yes"
label values bpmeds_file _VTc3bJJEH7Cr

label variable cholesterolmeds_file "Cholesterol Medication Brought to Clinic"
label define _W8sc8dAv7tFV 0 "No" 1 "Yes"
label values cholesterolmeds_file _W8sc8dAv7tFV

label variable chfmeds_file "Congestive Heart Failure Medication Brought to Clinic"
label define _NeUdCqbcuS7p 0 "No" 1 "Yes"
label values chfmeds_file _NeUdCqbcuS7p

label variable cancermeds_file "Chemotherapy Medication Brought to Clinic"
label define _c0Mp7h51blOF 0 "No" 1 "Yes"
label values cancermeds_file _c0Mp7h51blOF

label variable copdmeds_file "Chronic Obstructive Pulmonary Disease Medication Brought to Clinic"
label define _ItTJ79C49dTB 0 "No" 1 "Yes"
label values copdmeds_file _ItTJ79C49dTB

label variable dementiameds_file "Dementia Medication Brought to Clinic"
label define _Ag1462HzJ8d8 0 "No" 1 "Yes"
label values dementiameds_file _Ag1462HzJ8d8

label variable depressionmeds_file "Depression Medication Brought to Clinic"
label define _a9Id9l3sf5X3 0 "No" 1 "Yes"
label values depressionmeds_file _a9Id9l3sf5X3

label variable diabetesmeds_file "Diabetes Medication Brought to Clinic"
label define _qy94Cy2sJ19C 0 "No" 1 "Yes"
label values diabetesmeds_file _qy94Cy2sJ19C

label variable gerdmeds_file "Gastro-Esophageal Reflux Medication Brought to Clinic"
label define _l84sTc2XurJY 0 "No" 1 "Yes"
label values gerdmeds_file _l84sTc2XurJY

label variable laxativemeds_file "Laxatives Medication Brought to Clinic"
label define _FA9I8tPi162f 0 "No" 1 "Yes"
label values laxativemeds_file _FA9I8tPi162f

label variable aspirinmeds_file "Low Dose Aspirin Brought to Clinic"
label define _KkqjsNCHj9Ob 0 "No" 1 "Yes"
label values aspirinmeds_file _KkqjsNCHj9Ob

label variable edmeds_file "Male Impotence Medication Brought to Clinic"
label define _pA81v59J1816 0 "No" 1 "Yes"
label values edmeds_file _pA81v59J1816

label variable osteoporosismeds_file "Osteoporosis Medication Brought to Clinic"
label define _atSJK6MP9kCa 0 "No" 1 "Yes"
label values osteoporosismeds_file _atSJK6MP9kCa

label variable painmeds_file "Pain Medication Brought to Clinic"
label define _JTW9JlvPl39Q 1 "Yes" 0 "No"
label values painmeds_file _JTW9JlvPl39Q

label variable parkinsonmeds_file "Parkinson's Medication Brought to Clinic"
label define _dly7AqwyESqd 0 "No" 1 "Yes"
label values parkinsonmeds_file _dly7AqwyESqd

label variable sleepmeds_file "Sleep Medication Brought to Clinic"
label define _h6L5Gas5HH0u 0 "No" 1 "Yes"
label values sleepmeds_file _h6L5Gas5HH0u

label variable thyroidmeds_file "Thyroid Hormone Medication Brought to Clinic"
label define _lS6x8x1yvhP4 0 "No" 1 "Yes"
label values thyroidmeds_file _lS6x8x1yvhP4

label variable topicalmeds_file "Topical Medication Brought to Clinic"
label define _D6JlgQosooWr 0 "No" 1 "Yes"
label values topicalmeds_file _D6JlgQosooWr

label variable triglyceridemeds_file "Triglycerides Medication Brought to Clinic"
label define _zEJoc24TiftJ 0 "No" 1 "Yes"
label values triglyceridemeds_file _zEJoc24TiftJ

label variable vitaminmineralmeds_file "Vitamin or Mineral Medication Brought to Clinic"
label define _SIA3662tSkFI 0 "No" 1 "Yes"
label values vitaminmineralmeds_file _SIA3662tSkFI

label variable vitamindmeds_file "Vitamin D Medication Brought to Clinic"
label define _iErIa0t1G9lU 0 "No" 1 "Yes"
label values vitamindmeds_file _iErIa0t1G9lU

label variable bpmeds_self "Self-Reported BP Medication Use"
label define _Cgmbk1N20840 0 "No" 1 "Yes"
label values bpmeds_self _Cgmbk1N20840

label variable diabetesmeds_self "Self-Reported Glucose Medication Use (Y/N)"
label define _WPObrRn0cY72 0 "No" 1 "Yes"
label values diabetesmeds_self _WPObrRn0cY72

label variable cholesterolmeds_self "Self-Reported Cholesterol Medication Use (Y/N)"
label define _BzXl5gNygJ 0 "No" 1 "Yes"
label values cholesterolmeds_self _BzXl5gNygJ

label variable depressiontrt_self "Self-Reported Teatment/Medication and/or Counselling for Depression"
label define _Hf0qm30TmB 0 "No" 1 "Yes"
label values depressiontrt_self _Hf0qm30TmB

label variable bpmeds "BP Medication Use"
label define _VFl66BIXwk 0 "No" 1 "Yes"
label values bpmeds _VFl66BIXwk

label variable diabetesmeds "Glucose Medication Use (Y/N)"
label define _xNmCipi9jN 0 "No" 1 "Yes"
label values diabetesmeds _xNmCipi9jN

label variable cholesterolmeds "Cholesterol Medication Use (Y/N)"
label define _NHzxKfggad 0 "No" 1 "Yes"
label values cholesterolmeds _NHzxKfggad

label variable depressiontrt "Teatment/Medication and/or Counselling for Depression"
label define _qJiXFFQaEF 0 "No" 1 "Yes"
label values depressiontrt _qJiXFFQaEF

label variable hakcal "calories expended in exercise related activity - Harvard alumni scale"

label variable totkkwk "calories per kg expended in all activity"

label variable totkcal "calories expended in all activity"

label variable highxmin "minutes of vigorous actvity per week including brisk walking"

label variable walktime "minutes of any walking per week"

label variable exercise "exercise level 0=lt 30 mins and 3=gt 150 mins per week"
label define _EwfOt3PGoi 0 "Less than 30 minutes of high intensity exercise in the past two weeks" 3 "More than 150 minutes of high intensity exercise in the past two weeks" 2 "Between 75 and 150 minutes of high intensitiy exercise in the past two weeks" 1 "Between 30 and 75 minutes of high intensity exercise in the past two weeks"
label values exercise _EwfOt3PGoi

label variable walkquartermile "Difficulty/ease walking 1/4 mile"
label define _bHYzjQ0a2T40 6 "very easy" 5 "somewhat easy" 0 "unable to do" 4 "not so easy" 3 "a little difficulty" 2 "some difficulty" 1 "a lot of difficulty"
label values walkquartermile _bHYzjQ0a2T40

label variable walkonemile "Difficulty/ease walking 1 mile if no difficulty walking 1/4 mile"
label define _pKj63X9U4g18 3 "very easy" 0 "difficult" 2 "somewhat easy" 1 "not so easy"
label values walkonemile _pKj63X9U4g18

label variable wkindex "Walking ability summary score"

label variable stairs10 "Difficulty/ease walking up 10 steps"
label define _eYd9xu67rp24 6 "very easy" 5 "somewhat easy" 4 "not so easy" 2 "some difficulty" 0 "unable to do" 3 "a little difficulty" 1 "a lot of difficulty"
label values stairs10 _eYd9xu67rp24

label variable stairs20 "Difficulty/ease walking up 20 steps if no difficulty walking up 10 steps"
label define _ZT8NHF9OM9J8 3 "very easy" 2 "somewhat easy" 0 "difficult" 1 "not so easy"
label values stairs20 _ZT8NHF9OM9J8

label variable stindex "Climbing stairs ability summary score"

label variable liftcarry10 "Difficulty/ease lifting/carrying 10 lbs"
label define _Byh541oGlzy8 6 "very easy" 5 "somewhat easy" 3 "a little difficulty" 2 "some difficulty" 0 "unable to do" 4 "not so easy" 1 "a lot of difficulty"
label values liftcarry10 _Byh541oGlzy8

label variable liftcarry20 "Difficulty/ease lifting/carrying 20 lbs if no difficulty lifting/carrying 10 lbs"
label define _CTYVd3Wjrs3Y 3 "very easy" 2 "somewhat easy" 0 "difficult" 1 "not so easy"
label values liftcarry20 _CTYVd3Wjrs3Y

label variable lcindex "Lifting/carrying ability summary score"

label variable handgrip "Maximum hand grip (kg)"

label variable did400m "400 meter walk - completion flag"
label define _iXe3CJ3001XL 1 "complete" 0 "started but stopped" 3 "stopped after 2:30 minute walk" 2 "excluded including incomplete 2:30 minute walk" 4 "not done for technical reasons/refused"
label values did400m _iXe3CJ3001XL

label variable c400secs "400 meter walk - time (seconds)"

label variable c400pace "400 meter walk - pace (m/s)"

label variable c400aid "400 meter walk - walking aid use"
label define _uNS221A6f35w 0 "2:30 minute walk without aid" 1 "Aid used for 2:30 minute walk"
label values c400aid _uNS221A6f35w

label variable uw150 "Usual pace walk - completion flag"
label define _bXpNmW486Mxv 1 "completed" 3 "not done for technical reason/refused" 0 "started but stopped" 2 "excluded"
label values uw150 _bXpNmW486Mxv

label variable uw150meters "Usual pace walk - distance (meters)"

label variable uw150pace "Usual pace walk - pace (m/s)"

label variable uw150aid "Usual pace walk - walking aid use"
label define _UJ648Mr6Uad9 0 "Usual-paced walk without aid" 1 "Aid used for usual-paced walk"
label values uw150aid _UJ648Mr6Uad9

label variable adl_trans "ADL - any difficulty getting in and out of bed or chair"

label variable adlh_trans "ADL - need special equipment getting in and out of bed or chair"

label variable adl_bathe "ADL - any difficulty bathing or showering"

label variable adlh_bathe "ADL - need special equipment bathing or showering"

label variable adl_dress "ADL - any difficulty dressing"

label variable adlh_dress "ADL - need special equipment dressing"

label variable adl_eat "ADL - any difficulty eating"

label variable adlh_eat "ADL - need special equipment eating"

label variable adl_toilet "ADL - any difficulty using the toilet"

label variable adlh_toilet "ADL - need special equipment using the toilet"

label variable adl_walk "ADL - any difficulty walking across a small room"

label variable adlh_walk "ADL - need special equipment walking across a small room"

label variable adl_total "ADL - total score"

label variable adl_nmiss "ADL - number missing"

label variable adl_number "ADL - number with any difficulty (if all non-missing)"

label variable iadl_lightwork "IADL - any difficulty doing light housework"

label variable iadlh_lightwork "IADL - do not do light housework for health-related reasons"

label variable iadl_heavywork "IADL - any difficulty doing heavy housework"

label variable iadlh_heavywork "IADL - do not do heavy housework for health-related reasons"

label variable iadl_meal "IADL - any difficulty preparing own meals"

label variable iadlh_meal "IADL - do not prepare meals for health-related reasons"

label variable iadl_shop "IADL - any difficulty shopping for personal items"

label variable iadlh_shop "IADL - do not shop for health-related reasons"

label variable iadl_phone "IADL - any difficulty using the telephone"

label variable iadlh_phone "IADL - do not use the telephone for health-related reasons"

label variable iadl_meds "IADL - any difficulty taking medication"

label variable iadlh_meds "IADL - do not take medication for health-related reasons"

label variable iadl_money "IADL - any difficulty managing money"

label variable iadlh_money "IADL - do not manage money for health-related reasons"

label variable iadl_drive "IADL - any difficulty driving"

label variable iadlh_drive "IADL - primary reason do not drive"

label variable r6mtime "6 meter walk time (sec)"

label variable rapidgaitspeed "Rapid gait speed (m/s)"

label variable gaitspeed "Usual gait speed (m/s)"

label variable sppb_gs "SPPB - gait speed score"

label variable sppb_cs "SPPB - chair stand score"

label variable sppb_sb "SPPB - standing balance score"

label variable sppb "SPPB - score"

label variable gs_ratio "Expanded SPPB - Gait Speed Ratio"

label variable cs5pace "SPPB - 5 chair stand speed"

label variable cs10pace "SPPB - 10 chair stand speed"

label variable cs_ratio "Expanded SPPB - Chair Stand Ratio"

label variable nwalk "Successfully completed narrow walk"
label define _NcCQenio3K 1 "Yes" 0 "No"
label values nwalk _NcCQenio3K

label variable nwalktime "Narrow walk time in seconds"

label variable nwspeed "Narrow walk speed (m/s)"

label variable nw_ratio "Expanded SPPB - Narrow Walk Ratio"

label variable ststime "Semi-tandem stand time in seconds"

label variable ftstime "Full-tandem time in seconds"

label variable slstime "Single leg stand time in seconds"

label variable totsbtime "Total standing balance time (seconds)"

label variable sb_ratio "Expanded SPPB - Standing Balance Ratio"

label variable habcppb "Expanded SPPB - score"

label variable sf12_pcscore "Physical health composite score"

label variable sf12_mcscore "Mental health composite score"

label variable nmisssf "Number of missing components in SF12"

label variable ekg26 "EKG26"

label variable ekg27 "EKG27"

label variable ekg28 "EKG28"

label variable ekg29 "EKG29"

label variable demo03 "Current marital status"
label define _klx1peOyJA 1 "Married" 5 "Widowed" 4 "Divorced" 6 "Never married" 2 "Living with a partner" 3 "Separated" 7 "Refused" 8 "Don't know"
label values demo03 _klx1peOyJA

label variable pf01 "Do you have difficulty walking a quarter mile due to health"
label define _AdQciVWkLm 0 "No" 1 "Yes" 8 "Don't know/Do not do" 7 "Refused"
label values pf01 _AdQciVWkLm

label variable pf01a "How much difficulty walking a quarter mile"
label define _emZunRR0cl 4 "Unable to do" 1 "A little" 2 "Some" 3 "A lot" 8 "Don't know" 7 "Refused"
label values pf01a _emZunRR0cl

label variable pf01b "How easy is it to walk quarter mile"
label define _l2hA5wDctO 3 "VeryEasy" 2 "Somewhat easy" 1 "Not so easy" 8 "Don't know" 7 "Refused"
label values pf01b _l2hA5wDctO

label variable pf01c "Do you have difficulty walking one mile due to health"
label define _Pgwmdv2UJL 0 "No" 1 "Yes" 8 "Don't know/Do not do" 7 "Refused"
label values pf01c _Pgwmdv2UJL

label variable pf01d "How easy is it to walk one mile"
label define _ZmoYZUwnSk 3 "VeryEasy" 2 "Somewhat easy" 1 "Not so easy" 8 "Don't know" 7 "Refused"
label values pf01d _ZmoYZUwnSk

label variable ap02 "Have you had pain or aching most days for at least one month in or around either knee"
label define _y6MunClrI6 0 "No" 1 "Yes" 8 "Don't know" 7 "Refused"
label values ap02 _y6MunClrI6

label variable ap02g "Most days in past 12 mo did you have stiffness in either of your knees"
label define _lzoqBlzY5D 0 "No" 1 "Yes" 8 "Don't know" 7 "Refused"
label values ap02g _lzoqBlzY5D

label variable ap03 "Have you had pain most days for at least one month in or around either hip"
label define _z6laAm1sZ7 0 "No" 1 "Yes" 8 "Don't know" 7 "Refused"
label values ap03 _z6laAm1sZ7

label variable ap10 "In the past 12 months have you had pain lasting at least one month in your feet toes or ankles"
label define _cN7RlzkjTU 0 "No" 1 "Yes" 8 "Don't know" 7 "Refused"
label values ap10 _cN7RlzkjTU

label variable ldcw05 "Need to use walking aid"
label define _ih9RQKKqF6 0 "No" 1 "Yes"
label values ldcw05 _ih9RQKKqF6

label variable ldcw01 "Was the participant able to complete the fast paced 6 meter walk with or without a walking aid"
label define _TmBvg7aXXg 1 "Yes" 0 "No"
label values ldcw01 _TmBvg7aXXg

label variable ldcw02 "Are there abnormal ECG hardcopy references"
label define _SutupCZ0oN 0 "No" 2 "ECG not done or not available" 1 "Yes"
label values ldcw02 _SutupCZ0oN

label variable ldcw03 "Was resting heart rate greater than 120 bpm"
label define _Gg2npiETxf 0 "No" 1 "Yes"
label values ldcw03 _Gg2npiETxf

label variable ldcw04 "Was Systolic BP greater than 180 or diastolic pressure greater than 110"
label define _sy2dJe0x1i 0 "No" 1 "Yes"
label values ldcw04 _sy2dJe0x1i

label variable ldcw11 "Had heart attack within past 3 mo"
label define _cqTTKkw7vx 0 "No" 2 "Don't know" 1 "Yes"
label values ldcw11 _cqTTKkw7vx

label variable ldcw12 "Had angioplasty within past 3 mo"
label define _tY113Qbave 0 "No" 2 "Don't know" 1 "Yes"
label values ldcw12 _tY113Qbave

label variable ldcw13 "Had heart surgery within past 3 mo"
label define _CCLt524mk4 0 "No" 2 "Don't know" 1 "Yes"
label values ldcw13 _CCLt524mk4

label variable ldcw14 "Had new or worsening within past 3 mo"
label define _znM85Madwy 0 "No" 1 "Yes" 2 "Don't know"
label values ldcw14 _znM85Madwy

label variable ldcw15 "Had new or worsening angina within past 3 mo"
label define _WZNwW06ZAq 0 "No" 1 "Yes" 2 "Don't know"
label values ldcw15 _WZNwW06ZAq

label variable ldcw16 "Had new or worsening shortness of breath within past 3 mo"
label define _xSGmWXv2wm 0 "No" 1 "Yes" 2 "Don't know"
label values ldcw16 _xSGmWXv2wm

label variable mdcw27 "Did participant complete 230 walk"
label define _m3psxOCWNa 1 "Yes" 0 "No"
label values mdcw27 _m3psxOCWNa

label variable mdcw27a "Usual Pace reason not done"
label define _I0p197cuxj 9 "Other" 99 "No time or tester" 77 "Refused" 1 "Exclusion criteria" 3 "Short of Breath" 5 "Knee pain" 4 "Felt faint" 7 "Calf pain" 6 "Hip pain" 8 "Back pain" 2 "Chest pain"
label values mdcw27a _I0p197cuxj

label variable ldcw47 "Did participant complete 400 meter walk"
label define _PqEWnvdkij 1 "Yes" 0 "No"
label values ldcw47 _PqEWnvdkij

label variable ldcw47a "400 meter reason not done"
label define _hAzGbC5Kzp 1 "Exclusion criteria" 10 "Did not finish 2:30 walk" 11 "Elevated HR during 2:30 walk" 13 "Had symptoms during 2:30 walk" 14 "Fatigue/Exhaustion/Tiredness" 2 "Chest pain" 3 "Short of Breath" 4 "Felt faint" 5 "Knee pain" 6 "Hip pain" 7 "Calf pain" 77 "Refused" 8 "Back pain" 9 "Other" 99 "No time or tester"
label values ldcw47a _hAzGbC5Kzp

label variable mdhx3 "Has doctor ever said you had a heart attack or myocardial infarction"
label define _CIUbXffxvy 0 "No" 1 "Yes" 8 "Do not know" 7 "Refused"
label values mdhx3 _CIUbXffxvy

label variable mdhx4 "Has doctor ever said you had a heart failure or CHF"
label define _VZT4pI1fte 0 "No" 1 "Yes" 8 "Do not know" 7 "Refused"
label values mdhx4 _VZT4pI1fte

label variable mdhx5 "Has doctor ever said you had angina chest pain due to heart or coronary artery disease"
label define _SsDWfomMCp 0 "No" 1 "Yes" 8 "Do not know" 7 "Refused"
label values mdhx5 _SsDWfomMCp

label variable mdhx6 "Has doctor ever said you had chronic bronchitis emphysema or COPD"
label define _QapSSGwAwQ 0 "No" 1 "Yes" 8 "Do not know" 7 "Refused"
label values mdhx6 _QapSSGwAwQ

label variable mdhx7 "Has doctor ever said you had asthma"
label define _dnPb9ur2lK 0 "No" 1 "Yes" 8 "Do not know" 7 "Refused"
label values mdhx7 _dnPb9ur2lK

label variable mdhx7a "If yes do you still have asthma"
label define _OyOIhL4oRJ 1 "Yes" 0 "No" 8 "Do not know" 7 "Refused"
label values mdhx7a _OyOIhL4oRJ

label variable mdhx12 "Has doctor ever said you had a stroke mini stroke or slight stroke"
label define _Wnc4eQ7YWV 0 "No" 1 "Yes" 8 "Do not know" 7 "Refused"
label values mdhx12 _Wnc4eQ7YWV

label variable mdhx15 "Has doctor ever said you had high blood pressure or hypertension"
label define _q5vaOcDm6o 0 "No" 1 "Yes" 8 "Do not know" 7 "Refused"
label values mdhx15 _q5vaOcDm6o

label variable mdhx15a "If yes are you currently taking prescribed medications for BP"
label define _qW8g7mEtCI 1 "Yes" 0 "No" 8 "Do not know" 7 "Refused"
label values mdhx15a _qW8g7mEtCI

label variable mdhx16 "Has doctor ever said you had diabetes glucose intolerance or high blood sugar"
label define _sfySZAjFSJ 0 "No" 1 "Yes" 8 "Do not know" 7 "Refused"
label values mdhx16 _sfySZAjFSJ

label variable mdhx16a "If yes are you currently taking diabetes medication"
label define _I7cpKYtqZO 0 "No" 1 "Yes" 8 "Do not know" 7 "Refused"
label values mdhx16a _I7cpKYtqZO

label variable mdhx18 "Had bypass surgery carotid endarterectomy or aortic aneurysm repair"
label define _nMRhGQKxv9 0 "No" 1 "Yes" 8 "Do not know" 7 "Refused"
label values mdhx18 _nMRhGQKxv9

label variable mdhx18a1 "Coronary bypass surgery heart bypass or CABG"
label define _BjwRZN8JLC 0 "No" 1 "Yes" 8 "Do not know"
label values mdhx18a1 _BjwRZN8JLC

label variable mdhx18a2 "Angioplasty of coronary arteries"
label define _q3HKx4C5DM 0 "No" 1 "Yes" 8 "Do not know"
label values mdhx18a2 _q3HKx4C5DM

label variable mdhx18a4 "Angioplasty on leg or femoral arteries"
label define _oSIThvsQu3 0 "No" 1 "Yes" 8 "Do not know"
label values mdhx18a4 _oSIThvsQu3

label variable mdhx19 "Ever told you had cancer or malignant growth"
label define _CtBpR7Qghb 0 "No" 1 "Yes" 8 "Do not know" 7 "Refused"
label values mdhx19 _CtBpR7Qghb

label variable mdh19a1 "Bladder cancer YN"
label define _iuLzrhLecR 0 "No" 1 "Yes"
label values mdh19a1 _iuLzrhLecR

label variable mdh19a2 "Brain cancer YN"
label define _sC43J4MeMP 0 "No" 1 "Yes"
label values mdh19a2 _sC43J4MeMP

label variable mdh19a3 "Breast cancer YN"
label define _TkCqikFKbo 0 "No" 1 "Yes"
label values mdh19a3 _TkCqikFKbo

label variable mdh19a4 "Cervical cancer YN"
label define _MNYMHUUT3x 0 "No" 1 "Yes"
label values mdh19a4 _MNYMHUUT3x

label variable mdh19a5 "Colon Rectal cancer YN"
label define _IWzWxncBaO 0 "No" 1 "Yes"
label values mdh19a5 _IWzWxncBaO

label variable mdh19a6 "Endometrial cancer YN"
label define _tdE9LAuuqk 0 "No" 1 "Yes"
label values mdh19a6 _tdE9LAuuqk

label variable mdh19a7 "Leukemia cancer YN"
label define _NqJdpYKRb1 0 "No" 1 "Yes"
label values mdh19a7 _NqJdpYKRb1

label variable mdh19a8 "Liver cancer YN"
label define _nceGKpcgSS 0 "No" 1 "Yes"
label values mdh19a8 _nceGKpcgSS

label variable mdh19a9 "Lung cancer YN"
label define _RQfsUsgh3K 0 "No" 1 "Yes"
label values mdh19a9 _RQfsUsgh3K

label variable mdh19a10 "Lymphoma cancer YN"
label define _G7cCKG82KT 0 "No" 1 "Yes"
label values mdh19a10 _G7cCKG82KT

label variable mdh19a11 "Melanoma cancer YN"
label define _VwuJLp8kVw 0 "No" 1 "Yes"
label values mdh19a11 _VwuJLp8kVw

label variable mdh19a12 "Ovarian cancer YN"
label define _HyxQj5K34b 0 "No" 1 "Yes"
label values mdh19a12 _HyxQj5K34b

label variable mdh19a13 "Pancreatic cancer YN"
label define _IRWsbZFBFN 0 "No" 1 "Yes"
label values mdh19a13 _IRWsbZFBFN

label variable mdh19a14 "Prostate cancer YN"
label define _pRgbUuhfkx 0 "No" 1 "Yes"
label values mdh19a14 _pRgbUuhfkx

label variable mdh19a15 "Skin Basal cancer YN"
label define _SnfPevRvfW 0 "No" 1 "Yes"
label values mdh19a15 _SnfPevRvfW

label variable mdh19a16 "Skin Squamous cancer YN"
label define _xI7i00I7pK 0 "No" 1 "Yes"
label values mdh19a16 _xI7i00I7pK

label variable mdh19a17 "Stomach cancer YN"
label define _CAafWggLrV 0 "No" 1 "Yes"
label values mdh19a17 _CAafWggLrV

label variable mdh19a18 "Thyroid cancer YN"
label define _YBSDTOhuYh 0 "No" 1 "Yes"
label values mdh19a18 _YBSDTOhuYh

label variable mdh19a19 "Other cancer YN"
label define _cBNs73BtE4 0 "No" 1 "Yes"
label values mdh19a19 _cBNs73BtE4

label variable mdhx24 "Has doctor ever said you had Parkinsons disease"
label define _NyVK8ETOyV 0 "No" 1 "Yes" 8 "Do not know" 7 "Refused"
label values mdhx24 _NyVK8ETOyV

label variable mdhx25 "Has doctor ever said you had Intermittent Claudication or PAD"
label define _yuRZgmaXKl 0 "No" 1 "Yes" 8 "Do not know" 7 "Refused"
label values mdhx25 _yuRZgmaXKl

label variable cvrs6 "In the past 12 months have you had to sleep on 2 or more pillows to help you breathe"
label define _s4QF5AUSlv 0 "No" 1 "Yes" 8 "Do not know" 7 "Refused"
label values cvrs6 _s4QF5AUSlv

label variable pe18 "Rales"
label define _wsL8tNqsvY 0 "No rales" 1 "Rales at bases" 2 "Rales more than at bases" 8 "Unknown"
label values pe18 _wsL8tNqsvY

label variable pe67sr2 "BP right systolic measurement 2"

label variable pe67dr2 "BP right diastolic measurement 2"

label variable pe67sl2 "BP left systolic measurement 2"

label variable pe67dl2 "BP left diastolic measurement 2"

label variable pe67sr3 "BP right systolic measurement 3"

label variable pe67dr3 "BP right diastolic measurement 3"

label variable pe67sl3 "BP left systolic measurement 3"

label variable pe67dl3 "BP left diastolic measurement 3"

label variable pe67hrt "Heart rate"

label variable pe67f "Supine blood pressure completed"
label define _aI51n9OvsF 1 "Yes" 0 "No"
label values pe67f _aI51n9OvsF

label variable pe67fm "Supine blood pressure reason not done"
label define _K9CnennOU7 555 "555 - Physical problems" 999 "999 - Technical Problems" 666 "666 - Mental problems" 888 "888 - Refused but could do" 777 "777 - Both Physical and Mental problems"
label values pe67fm _K9CnennOU7

label variable pe83 "Edema score"
label define _LOAY5oFt5z 1 "Trace pitting" 2 "Very obvious pitting" 8 "Unknown"
label values pe83 _LOAY5oFt5z

label variable tssborg "Borg score for Steady Stage"

