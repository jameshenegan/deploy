clear
import delimited "../data-csv/der_bloodpressure.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "BLSA Visit Number"

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

