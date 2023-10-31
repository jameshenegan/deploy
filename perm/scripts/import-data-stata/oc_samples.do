clear
import delimited "../data-csv/oc_samples.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_sam "CRF Version"

label variable sam3tid "Stool Sample Tester ID"

label variable sam03 "Was Stool Sample collected"
label define _Zl1qzxTcVn 1 "Yes" 0 "No"
label values sam03 _Zl1qzxTcVn

label variable sam03a "Stool Sample reason not cone"
label define _zMgyJng84Z 5 "5-Unable (Physical or Mental)" 3 "3-No Time" 4 "4-Refused" 9 "9-Not Scheduled/Not Applicable" 6 "6-Equipment problems" 7 "7-No Tester" 8 "8-Not Eligible"
label values sam03a _zMgyJng84Z

label variable sam03c "Time collected"

label variable sam03d "Time ampm"
label define _BsEQHsyTnZ 1 "Am" 2 "Pm"
label values sam03d _BsEQHsyTnZ

label variable sam4tid "Stress Blood Sample Tester ID"

label variable sam04 "Was stress blood sample collected"
label define _cfBmCcvEqV 1 "Yes" 0 "No"
label values sam04 _cfBmCcvEqV

label variable sam04a "Blood Sample reason not cone"
label define _SYI3xaifZY 5 "5-Unable (Physical or Mental)" 8 "8-Not Eligible" 4 "4-Refused" 9 "9-Not Scheduled/Not Applicable" 3 "3-No Time" 6 "6-Equipment problems" 7 "7-No Tester"
label values sam04a _SYI3xaifZY

label variable sam04c "Time collected"

label variable sam04d "Time pm"

label variable sam04e "What time did you have dinner"

label variable sam04f "Anything to eat or drink after dinner"
label define _zFzwUJ7s5P 0 "No" 1 "Yes"
label values sam04f _zFzwUJ7s5P

label variable sam04g "Time you last consumed anything"

label variable sam04h "Time pm"

label variable sam2tid "Saliva Tester ID"

label variable sam02 "Was Saliva collected"
label define _BTyTSKYYzP 1 "Yes" 0 "No"
label values sam02 _BTyTSKYYzP

label variable sam02a "Saliva reason not cone"
label define _AtIgELIz5b 6 "6-Equipment problems" 9 "9-Not Scheduled/Not Applicable" 7 "7-No Tester" 4 "4-Refused" 3 "3-No Time" 5 "5-Unable (Physical or Mental)" 8 "8-Not Eligible"
label values sam02a _AtIgELIz5b

label variable sam1tid "Nail Clippings Tester ID"

label variable sam01c "Were nail clippings collected right"
label define _PLWK6E8lMJ 1 "Yes" 0 "No"
label values sam01c _PLWK6E8lMJ

label variable sam01d "Nail Clippings reason not done right"
label define _T9GkXZv35C 5 "5-Unable (Physical or Mental)" 4 "4-Refused" 9 "9-Not Scheduled/Not Applicable" 3 "3-No Time" 6 "6-Equipment problems" 7 "7-No Tester" 8 "8-Not Eligible"
label values sam01d _T9GkXZv35C

label variable sam01r "Nail clippings right"
label define _GEwD0vqKax 5 "5" 3 "3" 4 "4" 2 "2" 1 "1"
label values sam01r _GEwD0vqKax

label variable sam01a "Were nail clippings collected left"
label define _G8tzvFJQQY 1 "Yes" 0 "No"
label values sam01a _G8tzvFJQQY

label variable sam01b "Nail Clippings reason not done left"
label define _n7a9ABsFuJ 5 "5-Unable (Physical or Mental)" 4 "4-Refused" 3 "3-No Time" 9 "9-Not Scheduled/Not Applicable" 7 "7-No Tester" 6 "6-Equipment problems" 8 "8-Not Eligible"
label values sam01b _n7a9ABsFuJ

label variable sam01l "Nail clippings left"
label define _vVIqsLqqYs 5 "5" 3 "3" 4 "4" 2 "2" 1 "1"
label values sam01l _vVIqsLqqYs

label variable auto_id_sam "Unique Teleform Number"

label variable sam04d_2 "Time pm : Pm (Checkbox Indicator)"

label variable sam04h_2 "Time pm : Pm (Checkbox Indicator)"

