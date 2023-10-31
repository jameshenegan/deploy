clear
import delimited "../data-csv/oc_recoveryabi.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_recabi "CRF Version"

label variable testerid_recabi "Tester ID"

label variable rabi01 "Was Recovery ABI performed"
label define _q6eSxkBoKO 1 "Yes both sides" 0 "No" 2 "Right only" 3 "Left only"
label values rabi01 _q6eSxkBoKO

label variable rabi01a "Recovery ABI reason not done"
label define _TYts8SxQvS 0 "Other" 2 "No tester" 555 "Physical" 1 "Contraindication" 666 "Cognitive" 777 "Physical and Cognitive" 888 "Refused" 999 "Technical problems"
label values rabi01a _TYts8SxQvS

