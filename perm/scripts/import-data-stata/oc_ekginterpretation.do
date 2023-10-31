clear
import delimited "../data-csv/oc_ekginterpretation.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_ekgint "CRF Version"

label variable ekgcdrid "Coder ID"

label variable ekg01 "EKG done"
label define _aSnV5FJv71 1 "Yes" 0 "Other" 9 "Technical problems" 7 "Physical and cognitive" 5 "Physical" 6 "Cognitive" 8 "Refused"
label values ekg01 _aSnV5FJv71

label variable ekg02 "EKG02"
label define _gGi8j9n7xK 1 "1" 2 "2" 3 "3" 4 "4" 5 "5"
label values ekg02 _gGi8j9n7xK

label variable ekg03 "EKG03"
label define _O14v9VdV72 1 "1" 3 "3" 2 "2"
label values ekg03 _O14v9VdV72

label variable ekg04 "EKG04"
label define _HAbtUuYncn 3 "3" 2 "2" 1 "1" 4 "4"
label values ekg04 _HAbtUuYncn

label variable ekg05 "EKG05"
label define _Gy4YKMuLJ1 3 "3" 2 "2" 1 "1" 4 "4"
label values ekg05 _Gy4YKMuLJ1

label variable ekg06 "EKG06"
label define _HU4LVMOEdN 3 "3" 2 "2" 5 "5" 1 "1" 4 "4"
label values ekg06 _HU4LVMOEdN

label variable ekg07 "EKG07"
label define _VjsIio4LAq 2 "2" 3 "3" 5 "5" 1 "1" 6 "6" 4 "4"
label values ekg07 _VjsIio4LAq

label variable ekg08 "EKG08"
label define _QLjigDU2vN 8 "8" 1 "1" 9 "9" 3 "3" 7 "7" 2 "2" 4 "4" 5 "5" 6 "6"
label values ekg08 _QLjigDU2vN

label variable ekg30 "EKG30"
label define _MSniIxgg5z 1 "1" 3 "3" 4 "4" 2 "2" 8 "8" 5 "5" 6 "6" 7 "7"
label values ekg30 _MSniIxgg5z

label variable ekg09 "EKG09"
label define _JMspKN2Dbv 5 "5" 4 "4" 2 "2" 1 "1" 3 "3" 6 "6" 7 "7"
label values ekg09 _JMspKN2Dbv

label variable ekg26 "EKG26"
label define _pu8Jo92mJC 1 "1" 2 "2" 3 "3"
label values ekg26 _pu8Jo92mJC

label variable ekg27 "EKG27"
label define _asAsDIHc2X 2 "2" 4 "4" 1 "1" 3 "3" 5 "5" 7 "7" 6 "6" 8 "8"
label values ekg27 _asAsDIHc2X

label variable ekg28 "EKG28"
label define _DTLBMikprO 1 "1" 2 "2" 3 "3"
label values ekg28 _DTLBMikprO

label variable ekg29 "EKG29"
label define _AgaXmfwjbs 6 "6" 7 "7" 4 "4" 1 "1" 2 "2" 3 "3" 5 "5" 8 "8"
label values ekg29 _AgaXmfwjbs

label variable auto_id_ekgint "Unique Teleform Number"

label variable testerid_ekgint "Tester ID"

