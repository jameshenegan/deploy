clear
import delimited "../data-csv/oc_proprioception.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_pro "CRF Version"

label variable pro01 "Status of Proprioception test"
label define _vGOldTeLrP 1 "Attempted" 0 "Not attempted"
label values pro01 _vGOldTeLrP

label variable pro01a "Reason test not performed"
label define _Ba6bNP7JL5 1 "Not enough time/not scheduled" 3 "Technical/equipment problem" 2 "No examiner available" 8 "Other Physical problems" 7 "Participant refused" 6 "Examiner felt unsafe" 5 "Unable to stand/walk" 4 "Cognitively impaired" 11 "Severely limited ankle range of motion (<10 degree dorsiflexion or plantar flexion)" 12 "Unable to follow directions" 10 "Lower limb braces ambulatory" 9 "Lower limb amputations"
label values pro01a _Ba6bNP7JL5

label variable pro02 "Accuracy in threshold test"
label define _FhUgThcAg1 1 "All Correct" 2 "Partially Correct"
label values pro02 _FhUgThcAg1

label variable pro02a "Partially correct threshold"

label variable auto_id_pro "Unique Teleform Number"

label variable pro02a_1 "Partially correct threshold : Threshold 1 (Checkbox Indicator)"

label variable pro02a_2 "Partially correct threshold : Threshold 2 (Checkbox Indicator)"

label variable pro02a_3 "Partially correct threshold : Threshold 3 (Checkbox Indicator)"

label variable pro02a_4 "Partially correct threshold : Threshold 4 (Checkbox Indicator)"

label variable testerid_pro "Tester ID"

