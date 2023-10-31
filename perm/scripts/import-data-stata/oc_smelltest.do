clear
import delimited "../data-csv/oc_smelltest.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_smetes "CRF Version"

label variable stdone "Was smell test completed"
label define _oPGRHbQWCz 1 "Yes" 0 "No"
label values stdone _oPGRHbQWCz

label variable strnd "Reason not done"
label define _RSLMFNslH3 9 "Not Scheduled" 5 "Unable: Physical/Mental" 3 "No Time" 4 "Refused" 7 "No Tester" 8 "Not Eligible" 6 "Equipment Problem"
label values strnd _RSLMFNslH3

label variable stver "Smell test version"
label define _LKcNBzLNdi 2 "Purple" 1 "Blue"
label values stver _LKcNBzLNdi

label variable stsmell "Sense of smell"
label define _ckpxqeJoye 3 "Good" 2 "Fair" 4 "Excellent" 1 "Poor"
label values stsmell _ckpxqeJoye

label variable stnasal "Do you have nasal congestion today"
label define _U98aNwLaou 0 "No" 1 "Yes"
label values stnasal _U98aNwLaou

label variable stcard1 "Card 1"

label variable stcard2 "Card 2"

label variable stcard3 "Card 3"

label variable stcard4 "Card 4"

label variable stcard5 "Card 5"

label variable stcard6 "Card 6"

label variable stcard7 "Card 7"

label variable stcard8 "Card 8"

label variable stcard9 "Card 9"

label variable stcard10 "Card 10"

label variable stcard11 "Card 11"

label variable stcard12 "Card 12"

label variable stcard13 "Card 13"

label variable stcard14 "Card 14"

label variable stcard15 "Card 15"

label variable stcard16 "Card 16"

label variable stcard1p "Card 1"

label variable stcard2p "Card 2"

label variable stcard3p "Card 3"

label variable stcard4p "Card 4"

label variable stcard5p "Card 5"

label variable stcard6p "Card 6"

label variable stcard7p "Card 7"

label variable stcard8p "Card 8"

label variable stcard9p "Card 9"

label variable stcard10p "Card 10"

label variable stcard11p "Card 11"

label variable stcard12p "Card 12"

label variable stcard13p "Card 13"

label variable stcard14p "Card 14"

label variable stcard15p "Card 15"

label variable stcard16p "Card 16"

label variable auto_id_smetes "Unique Teleform Number"

label variable testerid_smetes "Tester ID"

