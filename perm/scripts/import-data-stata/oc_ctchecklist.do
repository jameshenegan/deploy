clear
import delimited "../data-csv/oc_ctchecklist.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_ctche "CRF Version"

label variable ct_er_scan "ER Scanner"

label variable ctckdne "CT scan done"
label define _tUFWiIw4Mq 1 "Yes" 888 "Refused" 999 "Technical problems" 555 "Physical problems" 666 "Cognitive problems"
label values ctckdne _tUFWiIw4Mq

label variable ctchk1 "Initial time"

label variable ctchk1a "Initial time am pm"
label define _Y65Z0k73zX 1 "am" 2 "pm"
label values ctchk1a _Y65Z0k73zX

label variable ctchk8a "Measurement A (mm) upper limit of greater tronchanter"

label variable ctchk8b "Measurement B"

label variable ctchk8c "Measurement C"

label variable ctchk8d "Measurement D"

label variable ctchk8e "Calculate E"

label variable ctchk8f "Calculate F"

label variable ctchk8g "Calculate G"

label variable ctchk8h "Calculate H"

label variable ctchk14 "Completion of questioner final time"

label variable ctchk14a "Completion Of Questioner Final Time am pm"
label define _NhrxRG8Ovm 1 "am" 2 "pm"
label values ctchk14a _NhrxRG8Ovm

label variable ctchk_lr "Which leg scanned"
label define _rr7OMv8okH 1 "Right" 2 "Left"
label values ctchk_lr _rr7OMv8okH

label variable auto_id_ctche "Unique Teleform Number"

label variable testerid_ctche "Tester ID"

label variable ct_er_scan_1 "ER Scanner : ER Scanner (Checkbox Indicator)"

