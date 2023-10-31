clear
import delimited "../data-csv/oc_swallowingquestionnaire.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_swaque "CRF Version"

label variable swaq01 "Cough when drink liquids"
label define _FuGE6W61nh 0 "Never" 1 "Sometimes" 2 "Always"
label values swaq01 _FuGE6W61nh

label variable swaq02 "Cough when eat solild food"
label define _RFZ91O3rWi 0 "Never" 1 "Sometimes" 2 "Always"
label values swaq02 _RFZ91O3rWi

label variable swaq03 "Need to drink fluids to wash food down"
label define _JQ26LElkFe 0 "Never" 1 "Sometimes" 2 "Always"
label values swaq03 _JQ26LElkFe

label variable swaq04 "I choke when I take my medication"
label define _CXOwrY33sH 0 "Never" 1 "Sometimes" 2 "Always"
label values swaq04 _CXOwrY33sH

label variable auto_id_swaque "Unique Teleform Number"

label variable testerid_swaque "Tester ID"

