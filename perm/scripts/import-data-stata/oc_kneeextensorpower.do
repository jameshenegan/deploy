clear
import delimited "../data-csv/oc_kneeextensorpower.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_kneextpow "CRF Version"

label variable tricom01a_kneextpow "Able to stand unassisted"

label variable kep01 "Time from Kin-Com testing"
label define _JJAzKUQpfD 1 "Kin-Com preceded power testing" 3 "Not scheduled for current visit" 2 "Kin-Com to follow power testing"
label values kep01 _JJAzKUQpfD

label variable kep02 "Did participant complete knee strength testing"
label define _ITX6csNWQ6 1 "Yes no discomfort test same leg" 0 "No excluded do not test" 3 "Yes some discomfort test other leg unless contraindications" 2 "No technical issues check knee strength eligibility"
label values kep02 _ITX6csNWQ6

label variable kep02a "Eligibility"
label define _MgtoBVeicK 0 "Not eligible" 1 "Eligible"
label values kep02a _MgtoBVeicK

label variable kep02b "Was range of motion 155 degrees or better"
label define _p6CKFm8evA 1 "Yes" 0 "No"
label values kep02b _p6CKFm8evA

label variable kep02c "Record ROM below 155 degrees"

label variable kep03 "Which leg was tested at most recent BLSA Kin-Com testing"
label define _nlMysXzK9r 1 "Right" 2 "First time" 3 "Left" 8 "Don't know"
label values kep03 _nlMysXzK9r

label variable kep03a "Which leg is to be tested"
label define _erhCG9mjLG 1 "Right" 3 "Neither (test not performed)" 2 "Left"
label values kep03a _erhCG9mjLG

label variable kep03b "Reason not tested"
label define _ZTsm0UGDll 999 "technical problems" 1 "Not elegible" 555 "physical problems" 888 "refused" 666 "cognitive problems" 777 "physical and cognitive"
label values kep03b _ZTsm0UGDll

label variable kep04 "Predicted Initial Setting"

label variable kep05 "1 RM"

label variable kep40t1 "40% 1 RM Trial 1"

label variable kep40t2 "40% 1 RM Trial 2"

label variable kep40t3 "40% 1 RM Trial 3"

label variable kep40t4 "40% 1 RM Trial 4"

label variable kep40t5 "40% 1 RM Trial 5"

label variable kep50t1 "50% 1 RM Trial 1"

label variable kep50t2 "50% 1 RM Trial 2"

label variable kep50t3 "50% 1 RM Trial 3"

label variable kep50t4 "50% 1 RM Trial 4"

label variable kep50t5 "50% 1 RM Trial 5"

label variable kep60t1 "60% 1 RM Trial 1"

label variable kep60t2 "60% 1 RM Trial 2"

label variable kep60t3 "60% 1 RM Trial 3"

label variable kep60t4 "60% 1 RM Trial 4"

label variable kep60t5 "60% 1 RM Trial 5"

label variable kep70t1 "70% 1 RM Trial 1"

label variable kep70t2 "70% 1 RM Trial 2"

label variable kep70t3 "70% 1 RM Trial 3"

label variable kep70t4 "70% 1 RM Trial 4"

label variable kep70t5 "70% 1 RM Trial 5"

label variable auto_id_kneextpow "Unique Teleform Number"

label variable testerid_kneextpow "Tester ID"

