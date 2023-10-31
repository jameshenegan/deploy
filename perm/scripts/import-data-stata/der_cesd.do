clear
import delimited "../data-csv/der_cesd.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "BLSA Visit Number"

label variable cesd01 "I was bothered by things that usually do not bother me"
label define _aRVD9up9oj 0 "Rarely or None of the Time" 1 "Some or Little of the Time" 2 "Moderately or Much of the time" 3 "Most or Almost All the Time"
label values cesd01 _aRVD9up9oj

label variable cesd02 "I did not feel like eating; my appetite was poor"
label define _PACDzF0x1B 0 "Rarely or None of the Time" 1 "Some or Little of the Time" 2 "Moderately or Much of the time" 3 "Most or Almost All the Time"
label values cesd02 _PACDzF0x1B

label variable cesd03 "I felt that I could not shake off the blues even with the help from my family and friends"
label define _BQPeFvkQAA 0 "Rarely or None of the Time" 1 "Some or Little of the Time" 2 "Moderately or Much of the time" 3 "Most or Almost All the Time"
label values cesd03 _BQPeFvkQAA

label variable cesd04 "I felt that I was just as good as other people"
label define _lGLeAU4EoV 0 "Most or Almost All the Time" 3 "Rarely or None of the Time" 1 "Moderately or Much of the time" 2 "Some or Little of the Time"
label values cesd04 _lGLeAU4EoV

label variable cesd05 "I had trouble keeping my mind on what I was doing"
label define _DxyX6jXvuY 0 "Rarely or None of the Time" 1 "Some or Little of the Time" 2 "Moderately or Much of the time" 3 "Most or Almost All the Time"
label values cesd05 _DxyX6jXvuY

label variable cesd06 "I felt depressed"
label define _RkILE22lVv 0 "Rarely or None of the Time" 1 "Some or Little of the Time" 2 "Moderately or Much of the time" 3 "Most or Almost All the Time"
label values cesd06 _RkILE22lVv

label variable cesd07 "I felt that everything I did was an effort"
label define _lOmPsdq8qm 0 "Rarely or None of the Time" 1 "Some or Little of the Time" 2 "Moderately or Much of the time" 3 "Most or Almost All the Time"
label values cesd07 _lOmPsdq8qm

label variable cesd08 "I felt hopeful about the future"
label define _w9Um1t629j 0 "Most or Almost All the Time" 1 "Moderately or Much of the time" 3 "Rarely or None of the Time" 2 "Some or Little of the Time"
label values cesd08 _w9Um1t629j

label variable cesd09 "I thought my life had been a failure"
label define _MPwSJct5J4 0 "Rarely or None of the Time" 1 "Some or Little of the Time" 2 "Moderately or Much of the time" 3 "Most or Almost All the Time"
label values cesd09 _MPwSJct5J4

label variable cesd10 "I felt fearful"
label define _PKYSk2wks5 0 "Rarely or None of the Time" 1 "Some or Little of the Time" 2 "Moderately or Much of the time" 3 "Most or Almost All the Time"
label values cesd10 _PKYSk2wks5

label variable cesd11 "My sleep was restless"
label define _CkjdpakTY2 0 "Rarely or None of the Time" 1 "Some or Little of the Time" 2 "Moderately or Much of the time" 3 "Most or Almost All the Time"
label values cesd11 _CkjdpakTY2

label variable cesd12 "I was happy"
label define _lChobcYEQ6 0 "Most or Almost All the Time" 1 "Moderately or Much of the time" 2 "Some or Little of the Time" 3 "Rarely or None of the Time"
label values cesd12 _lChobcYEQ6

label variable cesd13 "I talked less than usual"
label define _cNxljOEmeX 0 "Rarely or None of the Time" 1 "Some or Little of the Time" 2 "Moderately or Much of the time" 3 "Most or Almost All the Time"
label values cesd13 _cNxljOEmeX

label variable cesd14 "I felt lonely"
label define _PQuY90xH87 0 "Rarely or None of the Time" 1 "Some or Little of the Time" 2 "Moderately or Much of the time" 3 "Most or Almost All the Time"
label values cesd14 _PQuY90xH87

label variable cesd15 "People were unfriendly"
label define _e4fEEsrJki 0 "Rarely or None of the Time" 1 "Some or Little of the Time" 2 "Moderately or Much of the time" 3 "Most or Almost All the Time"
label values cesd15 _e4fEEsrJki

label variable cesd16 "I enjoyed life"
label define _p8dODD78EC 0 "Most or Almost All the Time" 1 "Moderately or Much of the time" 3 "Rarely or None of the Time" 2 "Some or Little of the Time"
label values cesd16 _p8dODD78EC

label variable cesd17 "I had crying spells"
label define _xebC3mc2U4 0 "Rarely or None of the Time" 1 "Some or Little of the Time" 2 "Moderately or Much of the time" 3 "Most or Almost All the Time"
label values cesd17 _xebC3mc2U4

label variable cesd18 "I felt sad"
label define _a0QhWziNfd 0 "Rarely or None of the Time" 1 "Some or Little of the Time" 2 "Moderately or Much of the time" 3 "Most or Almost All the Time"
label values cesd18 _a0QhWziNfd

label variable cesd19 "I felt people disliked me"
label define _alpVxFEv2F 0 "Rarely or None of the Time" 1 "Some or Little of the Time" 2 "Moderately or Much of the time" 3 "Most or Almost All the Time"
label values cesd19 _alpVxFEv2F

label variable cesd20 "I could not get going"
label define _jhvlx8jwJy 0 "Rarely or None of the Time" 1 "Some or Little of the Time" 2 "Moderately or Much of the time" 3 "Most or Almost All the Time"
label values cesd20 _jhvlx8jwJy

label variable cesd_der "CESD Depressive Symptoms (CESD) Score"

label variable cesd_der16 "CESD Symptoms of Depression (CESD 16+)"
label define _im6K35N0Os 0 "Symptoms Absent" 1 "Symptoms Present"
label values cesd_der16 _im6K35N0Os

label variable cesd_der20 "CESD Significant Symptoms of Depression (CESD 20+)"
label define _fxY1XlspKq 0 "Significant Symptoms Absent" 1 "Significant Symptoms Present"
label values cesd_der20 _fxY1XlspKq

label variable depression "Depression (Depressive Symptoms or Treatment/Counseling)"
label define _CSqlv2Uwmw 0 "Depression Absent" 1 "Depression Present"
label values depression _CSqlv2Uwmw

