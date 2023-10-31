clear
import delimited "../data-csv/oc_tmstressblood.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_tmstrblo "CRF Version"

label variable tmsb_done "Treadmill stress blood completed"
label define _ezWks4LVyO 1 "Yes" 0 "No"
label values tmsb_done _ezWks4LVyO

label variable tmsb_rnd "TMSB reason not done"
label define _mJaCePfWeP 2 "Unable" 1 "Refused" 3 "Not Scheduled" 4 "Other"
label values tmsb_rnd _mJaCePfWeP

label variable tmsb_samples "Were all blood draws completed"
label define _gGUx8T64yJ 1 "Yes" 0 "No"
label values tmsb_samples _gGUx8T64yJ

label variable tmsb_rnc "Reason not completed"
label define _saNH3OVtDf 1 "IV access" 2 "Refused" 3 "Other"
label values tmsb_rnc _saNH3OVtDf

