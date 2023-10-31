clear
import delimited "../data-csv/oc_parentallongevity.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_parlon "CRF Version"

label variable pl1 "Were you adopted"
label define _g9a44SpTPL 0 "No" 1 "Yes" 7 "Prefer not to answer" 8 "Don't know"
label values pl1 _g9a44SpTPL

label variable pl2 "Is your biological mother alive"
label define _edltXfYcA5 0 "No" 1 "Yes" 8 "Don't know" 7 "Prefer not to answer"
label values pl2 _edltXfYcA5

label variable pl2a "What is your mother's age now"

label variable pl2b "How old was your mother when she died"

label variable pl2c "Cause of death"
label define _mbHg8JPb2c 4 "Cancer" 13 "Other (please specify)" 14 "Undetermined/unknown" 2 "Stroke" 1 "Myocardial infarction" 6 "Alzheimer's disease/other dementia" 3 "Other CVD" 10 "Complications of fracture" 5 "COPD (emphysema chronic bronchitis)" 9 "Kidney disease" 8 "Influenze or pneumonia" 7 "Diabetes" 11 "Accident/trauma" 12 "Intentional self-harm (suicide)"
label values pl2c _mbHg8JPb2c

label variable pl3 "Is your biological father alive"
label define _x9OJddMBDB 0 "No" 1 "Yes" 8 "Don't know" 7 "Prefer not to answer"
label values pl3 _x9OJddMBDB

label variable pl3a "What is your father's age now"

label variable pl3b "How old was your father when he died"

label variable pl3c "Cause of death"
label define _yatPTvNDPv 4 "Cancer" 1 "Myocardial infarction" 13 "Other (please specify)" 2 "Stroke" 14 "Undetermined/unknown" 11 "Accident/trauma" 8 "Influenze or pneumonia" 6 "Alzheimer's disease/other dementia" 9 "Kidney disease" 5 "COPD (emphysema chronic bronchitis)" 3 "Other CVD" 7 "Diabetes" 10 "Complications of fracture" 12 "Intentional self-harm (suicide)"
label values pl3c _yatPTvNDPv

label variable pl4 "Is your adoptivel mother alive"
label define _HcnBVoCznd 0 "No" 8 "Don't know" 7 "Prefer not to answer" 1 "Yes"
label values pl4 _HcnBVoCznd

label variable pl4a "What is your mother's age now"

label variable pl4b "How old was your mother when she died"

label variable pl4c "Cause of death"
label define _b9NuAcOfeQ 6 "Alzheimer's disease/other dementia" 14 "Undetermined/unknown" 8 "Influenze or pneumonia" 3 "Other CVD" 7 "Diabetes" 1 "Myocardial infarction" 10 "Complications of fracture" 11 "Accident/trauma" 12 "Intentional self-harm (suicide)" 13 "Other (please specify)" 2 "Stroke" 4 "Cancer" 5 "COPD (emphysema chronic bronchitis)" 9 "Kidney disease"
label values pl4c _b9NuAcOfeQ

label variable pl5 "Is your adoptive father alive"
label define _peCyLbEqGz 0 "No" 8 "Don't know" 7 "Prefer not to answer" 1 "Yes"
label values pl5 _peCyLbEqGz

label variable pl5a "What is your father's age now"

label variable pl5b "How old was your father when he died"

label variable pl5c "Cause of death"
label define _QOgx7gHkrq 14 "Undetermined/unknown" 8 "Influenze or pneumonia" 13 "Other (please specify)" 4 "Cancer" 3 "Other CVD" 2 "Stroke" 12 "Intentional self-harm (suicide)" 1 "Myocardial infarction" 10 "Complications of fracture" 11 "Accident/trauma" 5 "COPD (emphysema chronic bronchitis)" 6 "Alzheimer's disease/other dementia" 7 "Diabetes" 9 "Kidney disease"
label values pl5c _QOgx7gHkrq

label variable testerid_parlon "Tester ID"

