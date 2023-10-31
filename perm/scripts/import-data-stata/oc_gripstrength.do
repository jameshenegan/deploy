clear
import delimited "../data-csv/oc_gripstrength.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_gristr "CRF Version"

label variable grip1 "Do you have arthritis in either hand or wrist"
label define _fOssYb4cHB 0 "No" 1 "Yes" 8 "Don't know" 7 "Refused"
label values grip1 _fOssYb4cHB

label variable grip1a "Is the pain or arthritis in your right left or both hands or wrists"
label define _arhIJMpKR3 3 "Both" 1 "Right" 2 "Left" 8 "Don't know" 7 "Refused"
label values grip1a _arhIJMpKR3

label variable grip1b "Has the pain or arthritis gotten worse recently"
label define _Li8KoB0iSR 0 "No" 1 "Yes" 8 "Don't know" 7 "Refused"
label values grip1b _Li8KoB0iSR

label variable grip1c "Will the pain or arthritis keep you from squeezing as hard as you can"
label define _VUiug6SM20 0 "No" 1 "Yes" 8 "Don't know" 7 "Refused"
label values grip1c _VUiug6SM20

label variable grip2 "Have you had surgery on either hand or wrist in the past 3 months"
label define _NQxq8Xjswb 0 "No" 8 "Don't know" 1 "Yes" 7 "Refused"
label values grip2 _NQxq8Xjswb

label variable grip2a "Was the surgery on your right left or both hands or wrists"
label define _Hl4WvJf4IY 2 "Left (Test right side only)" 1 "Right (Test left side only)" 8 "Don't know (Do not test)" 3 "Both (Do not test)"
label values grip2a _Hl4WvJf4IY

label variable grip3r1 "Trial 1 right hand"

label variable grip3r2 "Trial 2 right hand"

label variable grip3r3 "Trial 3 right hand"

label variable grip3r4 "Right hand completion status"
label define _WEcrOE7non 1 "Did 3 trials" 4 "Unable to do" 7 "Refused" 0 "Excluded" 3 "Did 1 trial" 2 "Did 2 trials"
label values grip3r4 _WEcrOE7non

label variable grip3l1 "Trial 1 left hand"

label variable grip3l2 "Trial 2 left hand"

label variable grip3l3 "Trial 3 left hand"

label variable grip3l4 "Left hand completion status"
label define _dXT6mdUPzd 1 "Did 3 trials" 4 "Unable to do" 7 "Refused" 0 "Excluded" 3 "Did 1 trial" 2 "Did 2 trials"
label values grip3l4 _dXT6mdUPzd

label variable auto_id_gristr "Unique Teleform Number"

label variable testerid_gristr "Tester ID"

