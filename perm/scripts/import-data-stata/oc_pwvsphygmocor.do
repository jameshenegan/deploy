clear
import delimited "../data-csv/oc_pwvsphygmocor.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_pwvsph "CRF Version"

label variable pwran_pwvsph "Randomization list"
label define _NPEcypgWnE 1 "Complior first SphygmoCor second" 2 "SphgmoCor first Complior second" 3 "Complior Only"
label values pwran_pwvsph _NPEcypgWnE

label variable pwv01_pwvsph "Was PWV performed"
label define _G7NsTCvWwF 1 "Yes" 0 "No"
label values pwv01_pwvsph _G7NsTCvWwF

label variable pwv01a_pwvsph "PWV reason not done"
label define _oXpvRLNMrv 999 "Technical problems" 0 "Other" 1 "Contraindication" 555 "Physical" 666 "Cognitive" 777 "Physical and Cognitive" 888 "Refused"
label values pwv01a_pwvsph _oXpvRLNMrv

label variable pwv01b_pwvsph "PWV Contraindications"
label define _y9wK6DaIMj 3 "Hardware on neck precluding access to carotid pulse" 1 "TIA or CVA within past 6 months" 2 "Bilateral carotid bruits"
label values pwv01b_pwvsph _y9wK6DaIMj

label variable agi01_pwvsph "Was AGI performed"
label define _enHHyugeF6 1 "Yes" 0 "No"
label values agi01_pwvsph _enHHyugeF6

label variable agi01a_pwvsph "AGI reason not done"
label define _tkxIrAybqD 999 "Technical problems" 0 "Other" 1 "Contraindication" 555 "Physical" 666 "Cognitive" 777 "Physical and Cognitive" 888 "Refused"
label values agi01a_pwvsph _tkxIrAybqD

label variable agi01b_pwvsph "AGI Contraindications"

label variable abi01_pwvsph "Was ABI performed"
label define _dRBIokUZiY 1 "Yes both sides" 0 "No" 2 "Right only" 3 "Left only"
label values abi01_pwvsph _dRBIokUZiY

label variable abi01a_pwvsph "ABI reason not done"
label define _X1KaY5F0tR 999 "Technical problems" 0 "Other" 1 "Contraindication" 555 "Physical" 666 "Cognitive" 777 "Physical and Cognitive" 888 "Refused"
label values abi01a_pwvsph _X1KaY5F0tR

label variable abi01b_pwvsph "ABI reason not done Other"

label variable pwbp01_pwvsph "Blood pressure"
label define _HK8i93lnLR 1 "Yes" 0 "No"
label values pwbp01_pwvsph _HK8i93lnLR

label variable pwsbp_pwvsph "BP systolic"

label variable pwdbp_pwvsph "BP diastolic"

label variable pwmap_pwvsph "BP MAP"

label variable auto_id_pwvsph "Unique Teleform Number"

label variable testerid_pwvsph "Tester ID"

