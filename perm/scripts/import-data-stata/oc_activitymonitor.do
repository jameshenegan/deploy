clear
import delimited "../data-csv/oc_activitymonitor.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_actmon "CRF Version"

label variable achq01 "Actiwatch or Actigraph done"
label define _zRrvaxJbMI 1 "Yes" 8 "Refused (but could do)" 0 "Other reason not done" 9 "Technical problems (no time or equipment problems)" 5 "Physical Problems" 6 "Cognitive Problems" 3 "Technical Problem (Bad Data)" 7 "Physical and Cognitive Problems" 4 "Not Completed (Less than 2 days)"
label values achq01 _zRrvaxJbMI

label variable achq02a "Hook up begin time"

label variable achq02ap "Hook up begin time am pm"
label define _oJCM6IYOtB 2 "PM" 1 "AM"
label values achq02ap _oJCM6IYOtB

label variable achq02c "Hook up end time"

label variable achq02cp "Hook up end time am pm"
label define _vKe9QlWBmq 2 "Pm" 1 "Am"
label values achq02cp _vKe9QlWBmq

label variable achq03 "Was Actiheart data completed upon return of the monitor"
label define _jnw2K958qU 1 "Yes" 0 "Other please specify" 5 "Mechanical problems with the monitor" 2 "Participant refused" 4 "Severe skin irritation occurred" 6 "Improper attachment of monitor and/or electrodes" 3 "Participant forgot"
label values achq03 _jnw2K958qU

label variable achq04 "Diary completed upon return"
label define _of6WA2QZBv 1 "Yes" 0 "Other please specify" 3 "Participant forgot" 2 "Participant refused"
label values achq04 _of6WA2QZBv

label variable achq05 "Post Questionnaire completed upon return"
label define _Gk7yZU6H2l 1 "Yes" 0 "Other please specify" 3 "Participant forgot" 2 "Participant refused"
label values achq05 _Gk7yZU6H2l

label variable achq11 "Was the amount and intensity of your physical activity in the past seven days typical"
label define _lPLLxTLvqm 1 "Yes" 0 "No"
label values achq11 _lPLLxTLvqm

label variable achq11a "If not were you more or less active than usual"
label define _M2cpvwCbO1 0 "Less" 1 "More"
label values achq11a _M2cpvwCbO1

label variable achq12 "Was your physical activity limited by any temporary illness or injury?"
label define _AMLIH0NLqH 0 "No" 1 "Yes"
label values achq12 _AMLIH0NLqH

label variable achq13 "Did you swim or engage in any other physical exercise without wearing the Activity"
label define _nlSNnoG0X7 0 "No" 1 "Yes"
label values achq13 _nlSNnoG0X7

label variable achq13a "Number of times without device"

label variable achq13b "Hours without device"

label variable achq13c "Intensity of activity without device"
label define _kf81tYnXqw 1 "Moderate" 0 "Light" 2 "Vigorous"
label values achq13c _kf81tYnXqw

label variable achq14 "How much of the time during the past seven days did you feel you had a lot of energy"
label define _ChJMVwLqt1 4 "Most" 3 "A good bit" 2 "Some" 5 "All" 1 "A little"
label values achq14 _ChJMVwLqt1

label variable achq15 "Past seven days how often have you felt unusually tired during the day"
label define _zo1xM1UYl9 1 "Some" 2 "Most" 3 "All"
label values achq15 _zo1xM1UYl9

label variable achq16 "Rate how weak did you feel during the past seven days"
label define _G4QDvekxh2 0 "0" 1 "1" 2 "2" 3 "3" 5 "5" 4 "4" 7 "7" 6 "6" 8 "8" 10 "10" 9 "9"
label values achq16 _G4QDvekxh2

label variable achq17 "Rate energy level during past seven days"
label define _ZfFzlHuh6z 8 "8" 7 "7" 5 "5" 9 "9" 6 "6" 4 "4" 3 "3" 10 "10" 2 "2" 1 "1" 0 "0"
label values achq17 _ZfFzlHuh6z

label variable achq18 "In the past seven days did you ever exercise to the point of exhaustion"
label define _VQPSNNY2ji 0 "No" 1 "Yes"
label values achq18 _VQPSNNY2ji

label variable achq18b "Activity 1 begin time"

label variable achq18bp "Activity 1 begin time am pm"
label define _xvKS5AmJLT 1 "Am" 2 "Pm"
label values achq18bp _xvKS5AmJLT

label variable achq18c "Activity 1 end time"

label variable achq18cp "Activity 1 end time am pm"
label define _W7ZKJg6Lbr 2 "Pm" 1 "Am"
label values achq18cp _W7ZKJg6Lbr

label variable achq18e "Activity 2 begin time"

label variable achq18ep "Activity 2 begin time am pm"
label define _hajjGXc6vA 1 "Am" 2 "Pm"
label values achq18ep _hajjGXc6vA

label variable achq18f "Activity 2 end time"

label variable achq18fp "Activity 2 end time am pm"
label define _CTWRX9rWHn 2 "Pm" 1 "Am"
label values achq18fp _CTWRX9rWHn

label variable achq18h "Activity 3 begin time"

label variable achq18hp "Activity 3 begin time am pm"
label define _PuNfJNL0Hm 2 "Pm" 1 "Am"
label values achq18hp _PuNfJNL0Hm

label variable achq18i "Activity 3 end time"

label variable achq18ip "Activity 3 end time am pm"
label define _c0pu7ENw8m 2 "Pm" 1 "Am"
label values achq18ip _c0pu7ENw8m

label variable achq01a1a_2 "Which device"
label define _rJgwW0LbZl 2 "Actigraph " 3 "Both" 4 "Actiwatch"
label values achq01a1a_2 _rJgwW0LbZl

label variable achq01a1a "Which device"
label define _ToFyIe6nr1 3 "Both" 2 "Actigraph " 1 "Actiheart" 4 "Actiwatch"
label values achq01a1a _ToFyIe6nr1

label variable achq01a1b "DLW Done"
label define _n6M1KVwrmL 0 "No" 1 "Yes"
label values achq01a1b _n6M1KVwrmL

label variable auto_id_actmon "Unique Teleform Number"

label variable testerid_actmon "Tester ID"

