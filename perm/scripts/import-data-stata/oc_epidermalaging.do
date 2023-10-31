clear
import delimited "../data-csv/oc_epidermalaging.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_epiagi "CRF Version"

label variable testerid_epiagi "Tester ID"

label variable informedconsent "Able to provide informed consent"
label define _IAIAH9rEKp 1 "Yes" 0 "No"
label values informedconsent _IAIAH9rEKp

label variable adhesiveallergy "Does not have a known allergy to adhesive tape"
label define _v0p8QRXGiq 1 "Yes" 0 "No"
label values adhesiveallergy _v0p8QRXGiq

label variable fragileskin "Does not have fragile skin"
label define _SAZ73ydXgp 1 "Yes" 0 "No"
label values fragileskin _SAZ73ydXgp

label variable skincondition "Does not have a wound or skin condition prone to excessive scarring"
label define _tkjs9GjATb 1 "Yes" 0 "No"
label values skincondition _tkjs9GjATb

label variable smoked "Has not smoked 3 hours prior to the procedure"
label define _iC2oH4IhYg 1 "Yes" 0 "No"
label values smoked _iC2oH4IhYg

label variable nocaffeine "Has not drank any caffeinated beverages 3 hours prior to the procedure"
label define _FLuce1mFbc 1 "Yes" 0 "No"
label values nocaffeine _FLuce1mFbc

label variable notopicalprod "Has not used any topical products 6 to 8 hrs before procedure"
label define _n0QXheRG6f 1 "Yes" 0 "No"
label values notopicalprod _n0QXheRG6f

label variable notpregnant_epiagi "Is not pregnant"
label define _AnxLSJn78I 1 "Yes" 0 "No"
label values notpregnant_epiagi _AnxLSJn78I

label variable eligibilityyn "Eligibility"
label define _i65SnTG8Ho 1 "Yes" 0 "No"
label values eligibilityyn _i65SnTG8Ho

label variable d1testerid "D1 Tester ID"

label variable consent_epiagi "Consent reviewed"
label define _zzzGjwYiTh 1 "Yes" 0 "No"
label values consent_epiagi _zzzGjwYiTh

label variable reveligibility "Eligibility criteria reviewed"
label define _OROZVmlHJP 1 "Yes" 0 "No"
label values reveligibility _OROZVmlHJP

label variable day1photo "Day 1 Forearm photographed"
label define _yahBsq7Od2 2 "Right" 1 "Left"
label values day1photo _yahBsq7Od2

label variable d2time "D2 Time"

label variable d2ampm "D2 am pm"
label define _PgVfbdLFwM 2 "Pm" 1 "Am"
label values d2ampm _PgVfbdLFwM

label variable d2testerid "D2 Tester ID"

label variable d2topicalprod "Has the participant used topical products on the forearm in the last 6-8 hours"
label define _vgwhf6Z2Kw 0 "No" 1 "Yes"
label values d2topicalprod _vgwhf6Z2Kw

label variable d2caffeine "Has the participant drank any caffeine or smoked in the past 3 hours"
label define _A2kyQeCU9K 0 "No" 1 "Yes"
label values d2caffeine _A2kyQeCU9K

label variable acclimate "Has the participant remained in the room 15-20 min to acclimate to the temperature and humidity"
label define _DFfIJhJYhI 1 "Yes" 0 "No"
label values acclimate _DFfIJhJYhI

label variable temproom "Room temperature"

label variable humidityrm "Room Humidity"

label variable baselinetewl "Baseline TEWL measurement"

label variable d3time "D3 Time"

label variable d3ampm "D3 am pm"
label define _LS2mSJwXMK 2 "Pm" 1 "Am"
label values d3ampm _LS2mSJwXMK

label variable d3testerid "D3 Tester ID"

label variable d3topicalprod "D3 Has the participant used topical products on the forearm in the last 6-8 hours"
label define _LvdeMNZezy 0 "No" 1 "Yes"
label values d3topicalprod _LvdeMNZezy

label variable d3caffeine "D3 Has the participant drank any caffeine or smoked in the past 3 hours"
label define _HN8OVbU3B5 0 "No" 1 "Yes"
label values d3caffeine _HN8OVbU3B5

label variable d3acclimate "D3 Has the participant remained in the room 15-20 min to acclimate to the temperature and humidity"
label define _hHYTeMjfQJ 1 "Yes" 0 "No"
label values d3acclimate _hHYTeMjfQJ

label variable d3rmtemp "D3 Room temperature"

label variable d3rmhumidity "D3 Room Humidity"

label variable d3tewl "D3 TEWL measurement"

label variable day3photo "D3 Forearm photographed"
label define _QxsS5J8HvT 1 "Yes" 0 "No"
label values day3photo _QxsS5J8HvT

label variable d3tewlm2 "D3 TEWL measurement 2"

label variable d3tewlm3 "D3 TEWL measurement 3"

label variable d2tewlm2 "D2 TEWL measurement 2"

label variable d2tewlm3 "D2 TEWL measurement 3"

label variable discsize "Stripping disc size"
label define _YViKaEUK45 1 "D-Squame size 1.1875_x009d_ (D102 Large)" 2 "D-Squame size 0.875_x009d_ (D100 Standard)"
label values discsize _YViKaEUK45

label variable tewlavg "TEWL average"

