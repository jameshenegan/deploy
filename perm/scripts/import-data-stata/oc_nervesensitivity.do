clear
import delimited "../data-csv/oc_nervesensitivity.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_nersen "CRF Version"

label variable nrvs01a "Foot temperature at start of study"

label variable nrvs01b "Foot temperature following heating:"

label variable nrvs01c "Foot temperature at end of tests:"

label variable nrvs02 "Which leg was tested"
label define _m5dK8dIjgi 0 "Right" 1 "Left"
label values nrvs02 _m5dK8dIjgi

label variable nrvs02a "Why wasn't right let tested"
label define _aoybU5YaXP 9 "Other please specify" 3 "Trauma or surgery (including knee replacement)" 1 "Amputation" 2 "Ulcer"
label values nrvs02a _aoybU5YaXP

label variable nrvsdon "Was test done"
label define _NBIgDr10zK 1 "Yes" 9 "Technical problems" 5 "Physical problems" 6 "Cognitive problems" 7 "Refused"
label values nrvsdon _NBIgDr10zK

label variable testerid_nersen "Tester ID"

