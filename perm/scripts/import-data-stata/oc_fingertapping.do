clear
import delimited "../data-csv/oc_fingertapping.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_fintap "CRF Version"

label variable ftt01 "Does the participant have physical hand problems"
label define _v5xRsWJxAc 0 "No" 1 "Yes"
label values ftt01 _v5xRsWJxAc

label variable fttdone "Was finger tapping completed"
label define _vPbM5CBaGC 1 "Yes" 0 "No"
label values fttdone _vPbM5CBaGC

label variable ftt02a "Reason test not performed or unsatisfactory"
label define _o77Pgxqq5g 999 "Technical problems (includes no time or no tester)" 1 "Other (please specify)" 555 "Physical problems" 666 "Mental problems" 888 "Refused" 777 "Physical and mental problems"
label values ftt02a _o77Pgxqq5g

label variable auto_id_fintap "Unique Teleform Number"

label variable testerid_fintap "Tester ID"

