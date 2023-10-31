clear
import delimited "../data-csv/oc_holter.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_hol "CRF Version"

label variable holdone "Was holter done"
label define _yFLcz9feJD 1 "Yes" 4 "4-Pacemaker" 9 "9-Technical problems" 8 "8-Refused Holter but could do" 5 "5-Physical problems" 6 "6-Mental problems" 7 "7-Physical & Mental problems"
label values holdone _yFLcz9feJD

label variable hol2001 "Does participant have pacemaker"
label define _mv9w9ksOjv 0 "No" 1 "Yes"
label values hol2001 _mv9w9ksOjv

label variable hol02a "Holter hook up begin time"

label variable hol02ap "Holter hook up begin time AmPm"
label define _cIrhZpvCQk 1 "Am" 2 "Pm"
label values hol02ap _cIrhZpvCQk

label variable hol02b "Holter hook up end time"

label variable hol02bp "Holter hook up end time AmPm"
label define _TA8AoWh30I 1 "Am" 2 "Pm"
label values hol02bp _TA8AoWh30I

label variable hol02c "Holter end event"

label variable ogtt01_hol "OGTT not done or forgot to press holter button"
label define _FPCzLfVd76 0 "Not Done" 1 "Forgot to Press Holter Button"
label values ogtt01_hol _FPCzLfVd76

label variable ogtt01a "OGTT day"
label define _qdUiPhm5eJ 1 "Day 1" 2 "Day 2"
label values ogtt01a _qdUiPhm5eJ

label variable hol03a "OGTT begin time"

label variable hol03b "OGTT begin event number"

label variable hol03c "OGTT end time"

label variable hol03d "OGTT end event number"

label variable pe04_hol "Physical Exam not done or forgot to press holter button"
label define _f9Chp8mBJa 0 "Not Done" 1 "Forgot to Press Holter Button"
label values pe04_hol _f9Chp8mBJa

label variable petid "Physical Exam tester ID"

label variable pe04a "Physical Exam day"
label define _UjORRNYsfn 1 "Day 1" 2 "Day 2"
label values pe04a _UjORRNYsfn

label variable hol04a "Physical Exam begin time"

label variable hol04ap "Physical Exam begin time AmPm"
label define _VhBfjfurpK 1 "Am" 2 "Pm"
label values hol04ap _VhBfjfurpK

label variable hol04b "Physical Exam begin event number"

label variable hol04c "Physical Exam end time"

label variable hol04cp "Physical Exam end time AmPm"
label define _fUONAsb9fu 1 "Am" 2 "Pm"
label values hol04cp _fUONAsb9fu

label variable hol04d "Physical Exam end event number"

label variable hol05a "Sleep time begin time"

label variable hol05c "Sleep time end time"

label variable hol05b "Sleep time begin event number"

label variable hol05d "Sleep time end event number"

label variable hol06a "Nap time begin time"

label variable hol06c "Nap time end time"

label variable hol06b "Nap time begin event number"

label variable hol06d "Nap time end event number"

label variable hol07a "GAIT begin time"

label variable hol07c "GAIT end time"

label variable hol07b "GAIT begin event number"

label variable hol07d "GAIT end event number"

label variable hol08a "Finger tapping begin time"

label variable hol08c "Finger tapping end time"

label variable hol08b "Finger tapping begin event number"

label variable hol08d "Finger tapping end event number"

label variable hol09a "DEXA scan begin time"

label variable hol09c "DEXA scan end time"

label variable hol09b "DEXA scan begin event number"

label variable hol09d "DEXA scan end event number"

label variable tm10 "Treadmill not done or forgot to press holter button"
label define _TDWMEUPhWZ 1 "Forgot to Press Holter Button" 0 "Not Done"
label values tm10 _TDWMEUPhWZ

label variable tmtid "Treadmill tester ID"

label variable tm10a "Treadmill day"
label define _FgDAeX6zAL 1 "Day 1" 2 "Day 2"
label values tm10a _FgDAeX6zAL

label variable hol10a "Treadmill begin time"

label variable hol10ap "Treadmill begin time AmPm"
label define _qh0qxGSvOE 2 "Pm" 1 "Am"
label values hol10ap _qh0qxGSvOE

label variable hol10c "Treadmill end time"

label variable hol10cp "Treadmill end time AmPm"
label define _UFu6ZTeLo7 1 "Am" 2 "Pm"
label values hol10cp _UFu6ZTeLo7

label variable hol10b "Treadmill begin event number"

label variable hol10d "Treadmill end event number"

label variable hol11a "PFT begin time"

label variable hol11c "PFT end time"

label variable hol11b "PFT begin event number"

label variable hol11d "PFT end event number"

label variable holt1d1 "Tester ID comment 1"

label variable holaqid "Acquired Tester ID"

label variable holinid "Interpreter Tester ID"

label variable hol1001 "Rhythm"
label define _q200SHKDGY 2 "Sinus with atrial ectopic beats" 0 "Sinus rhythm" 4 "Sinus with wandering atrial pacemaker" 1 "Sinus with sinus arrhythmia" 3 "Rhythm other than sinus"
label values hol1001 _q200SHKDGY

label variable hol2002 "Detected pacer"
label define _Egg4IruQF0 0 "Absent" 1 "Present"
label values hol2002 _Egg4IruQF0

label variable hol2003 "Percent paced"

label variable hol3001 "AV Blocks"
label define _dMNmiOzHkC 0 "Absent" 1 "1st degree AV block" 3 "2nd degree AV (Mobitz Type II)" 2 "2nd degree AV block (Wenckebach Mobitz Type I)" 4 "3rd degree AV block"
label values hol3001 _dMNmiOzHkC

label variable hol4001 "Distribution of pauses"
label define _aHXmeKhBAD 0 "Absent" 2 "Mostly Day" 1 "Mostly Night" 3 "Equally Night and Day"
label values hol4001 _aHXmeKhBAD

label variable hol5001 "Intraventricular blocks"
label define _z31cTzArzM 0 "Absent" 1 "Present"
label values hol5001 _z31cTzArzM

label variable hol5002 "IV Block type"
label define _MC3n2Hwnwe 1 "QRS 0.12" 3 "LBBB (QRS > 0.12)" 2 "RBBB (QRS > 0.12)" 4 "Other IVCD"
label values hol5002 _MC3n2Hwnwe

label variable hol6001 "Supraventricular arrhythmias"
label define _OouyobMWsr 0 "Absent" 1 "Present"
label values hol6001 _OouyobMWsr

label variable hol6002 "Distribution of SV arrhythmias"
label define _liPMRpMFe5 2 "Mostly day" 1 "Mostly night" 3 "Equally night and day"
label values hol6002 _liPMRpMFe5

label variable hol6003 "SV symptom:"
label define _i9HhkxIUWH 0 "Absent" 1 "Present"
label values hol6003 _i9HhkxIUWH

label variable hol6012 "SVT type"
label define _N2TqcBcdkj 5 "Other" 1 "A. Fib. Continuous" 6 "Combination" 3 "A. Fib. more than one episode" 2 "A. Fib. single episode" 4 "A. Flutter"
label values hol6012 _N2TqcBcdkj

label variable hol7001 "Ventricular arrhythmias"
label define _HnkSPnQmk4 0 "Absent" 1 "Present"
label values hol7001 _HnkSPnQmk4

label variable hol7002 "Distribution of Ventricular arrhythmias"
label define _YmNLn1uxQG 2 "Mostly day" 1 "Mostly night" 3 "Equally night and day"
label values hol7002 _YmNLn1uxQG

label variable hol7003 "Ventricular arrhythmias symptom"
label define _sOYjZ6tNux 0 "Absent" 1 "Present"
label values hol7003 _sOYjZ6tNux

label variable hol8001 "Recording quality"
label define _i1Epy1LYSf 2 "Good" 3 "Excellent" 0 "Very poor" 1 "Poor but probably usable"
label values hol8001 _i1Epy1LYSf

label variable offsite_id "Offsite tester ID"

label variable holquality "Holter Quality"

label variable auto_id_hol "Unique Teleform Number"

label variable testerid_hol "Tester ID"

label variable testerid_1_hol "Tester ID 1"

