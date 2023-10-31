clear
import delimited "../data-csv/oc_echoandcarotid.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_echandcar "CRF Version"

label variable echo01 "Echo done"
label define _oZpajPKOHH 1 "Yes" 0 "No"
label values echo01 _oZpajPKOHH

label variable echo01a "Echo reason not done"
label define _VfizWxyooo 999 "Technical problems" 0 "Other" 888 "Refused" 555 "Physical problems" 777 "Physical and cognitive" 666 "Cognitive"
label values echo01a _VfizWxyooo

label variable ct01 "Carotid done"
label define _qeJRA6VQsO 1 "Yes" 0 "No"
label values ct01 _qeJRA6VQsO

label variable ct01a "Carotid reason not done"
label define _FD6V54x6V3 999 "Technical problems" 1 "Other" 888 "Refused" 555 "Physical problems" 777 "Physical and cognitive" 666 "Cognitive"
label values ct01a _FD6V54x6V3

label variable bp001 "Blood pressure measured"
label define _E5cnXNi3eF 1 "Yes" 0 "No"
label values bp001 _E5cnXNi3eF

label variable bpsbp "Systolic"

label variable bpdbp "Diastolic"

label variable bpmap "MAP"

label variable auto_id_echandcar "Unique Teleform Number"

label variable testerid_echandcar "Tester ID"

