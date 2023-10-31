clear
import delimited "../data-csv/oc_walkingspeed.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_walspe "CRF Version"

label variable wsup10 "Usual Pace 10ft"
label define _VyHObjWvBD 1 "Completes without walking aid" 0 "Not attempted unable to walk unaided" 7 "Participant refused (includes not time/no tester"
label values wsup10 _VyHObjWvBD

label variable wsup10t "Usual Pace 10ft time"

label variable wsup100 "Usual Pace 100ft"
label define _czlPITzJze 1 "Completes without walking aid" 0 "Not attempted unable to walk unaided" 7 "Participant refused (includes not time/no tester"
label values wsup100 _czlPITzJze

label variable wsup100t "Usual Pace 100ft time"

label variable wsfp10 "Fast Pace 10ft"
label define _LZhAWsvWj7 1 "Completes without walking aid" 0 "Not attempted unable to walk unaided" 7 "Participant refused (includes not time/no tester"
label values wsfp10 _LZhAWsvWj7

label variable wsfp10t "Fast Pace 10ft time"

label variable wsfp100 "Fast Pace 100ft"
label define _G50g8PKjAM 1 "Completes without walking aid" 0 "Not attempted unable to walk unaided" 7 "Participant refused (includes not time/no tester"
label values wsfp100 _G50g8PKjAM

label variable wsfp100t "Fast Pace 100ft time"

label variable auto_id_walspe "Unique Teleform Number"

label variable testerid_walspe "Tester ID"

