clear
import delimited "../data-csv/oc_restingmetabolicrate.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_resmetrat "CRF Version"

label variable rmr01 "Time"

label variable rmr01a "Bed Number"

label variable rmr01b "Did participant stay at unit last night"
label define _iSEsCG8SaO 1 "Yes" 0 "No"
label values rmr01b _iSEsCG8SaO

label variable rmr02 "Body temperature"

label variable rmr03 "Room temperature"

label variable rmr03a "Humidity"

label variable rmr03b "Barometric Pressure"

label variable rmr04a "Have you been sitting or lying down in bed for at least 15 minutes"
label define _htJrxkVoso 1 "Yes" 0 "No"
label values rmr04a _htJrxkVoso

label variable rmr04b "Have you been fasting for a minimum of 4 hours"
label define _s8c7YqLFsE 1 "Yes" 0 "No"
label values rmr04b _s8c7YqLFsE

label variable rmr04c "Have you drunk water or other drinks in the past 4 hours"
label define _mHIT54UWFH 0 "No" 1 "Yes"
label values rmr04c _mHIT54UWFH

label variable rmr04d "Have you strenuously exercised in the past 4 hours"
label define _oCgU7r6GfR 0 "No" 1 "Yes"
label values rmr04d _oCgU7r6GfR

label variable rmr04e "Have you smoked in the last hour"
label define _MesntTdhC4 0 "No" 1 "Yes"
label values rmr04e _MesntTdhC4

label variable rmr04f "Have you taken medications other than those you use on a regular basis in the last 12 hours"
label define _SjIFOwHugD 0 "No" 1 "Yes"
label values rmr04f _SjIFOwHugD

label variable rmrdone "Was test done"
label define _otoGT8Xi5Z 1 "Yes" 999 "Technical problems" 888 "Refused but could do" 555 "Physical problems" 666 "Mental problems" 777 "Physical & mental problems"
label values rmrdone _otoGT8Xi5Z

label variable rmr05a "Was participant sitting or lying down"
label define _BggVYYmXpZ 1 "1 - Bed 45Â°" 2 "2 - Chair" 0 "0 - Bed lying flat"
label values rmr05a _BggVYYmXpZ

label variable rmr06 "Resting metabolic rate"

label variable repeat "Just repeat same number"

label variable auto_id_resmetrat "Unique Teleform Number"

label variable testerid_resmetrat "Tester ID"

