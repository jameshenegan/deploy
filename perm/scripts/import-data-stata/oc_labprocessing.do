clear
import delimited "../data-csv/oc_labprocessing.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_labpro "CRF Version"

label variable lab03 "Venipuncture done"
label define _W60dJ1Gjmo 1 "Yes" 0 "No"
label values lab03 _W60dJ1Gjmo

label variable lab03c "Venipuncture reason not done"
label define _DWkb8CR8YO 0 "Other (please specify)" 2 "Insufficient venous access" 7 "Refused" 9 "Technical problems" 1 "Exclusion criteria (includes lower hemoglobin)" 5 "Physical problems"
label values lab03c _DWkb8CR8YO

label variable lab03a "Venipuncture require more than 2 sticks"
label define _jMjt4n3vKb 0 "No" 1 "Yes"
label values lab03a _jMjt4n3vKb

label variable lab03b "Veins quality assessment"
label define _h9hAUDFVMW 3 "Good (moderate thin veins adequate blood flow)" 4 "Excellent (large veins no problems all tubes collected)" 2 "Fair (this veins slow blood flow)" 1 "Poor (small veins could not thread IV difficult blood blow)"
label values lab03b _h9hAUDFVMW

label variable lab04 "Were all expected samples collected at first day"
label define _V1ILxL2pxL 1 "Yes" 0 "No"
label values lab04 _V1ILxL2pxL

label variable lab04a "Fasting"
label define _XAJYLkIMw0 1 "Fasting" 0 "Not fasting"
label values lab04a _XAJYLkIMw0

label variable auto_id_labpro "Unique Teleform Number"

label variable lab01 "Have you donated blood within 56 days"
label define _uNctNHaCK8 0 "No" 1 "Yes"
label values lab01 _uNctNHaCK8

label variable lab02 "Have history of anemia"
label define _qyUKNX5RtK 0 "No" 1 "Yes"
label values lab02 _qyUKNX5RtK

label variable lab07 "Was 24 hour urine collection obtained"
label define _RYA8ZIZF1U 1 "Yes" 0 "No"
label values lab07 _RYA8ZIZF1U

label variable lab07a_labpro "24 hour urine begin time"

label variable lab07b_labpro "24 hour urine end time"

label variable lab06 "Urine specimen collected for UA"
label define _wXxkQxAnL8 1 "Yes" 0 "No"
label values lab06 _wXxkQxAnL8

label variable lab06a "Urine Fasting or Non Fasting"
label define _HQEyG5AUWq 1 "Fasting" 0 "Not fasting"
label values lab06a _HQEyG5AUWq

label variable lab07d "Total time for 24 hr urine"

label variable testerid_labpro "Tester ID"

