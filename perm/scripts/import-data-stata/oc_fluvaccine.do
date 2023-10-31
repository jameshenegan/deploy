clear
import delimited "../data-csv/oc_fluvaccine.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_fluvac "CRF Version"

label variable testerid_fluvac "Tester ID"

label variable hla2a "Is the participant eligibility beed determined as HLA-2A"
label define _cJKYNUX5Z4 1 "Yes" 0 "No"
label values hla2a _cJKYNUX5Z4

label variable consent_fluvac "Is the participant able to provide consent"
label define _ULW2UHa2hm 1 "Yes" 0 "No"
label values consent_fluvac _ULW2UHa2hm

label variable age "Is the participant 70 to 85 yrs of age"
label define _hT16wVS7li 1 "Yes" 0 "No"
label values age _hT16wVS7li

label variable agreefollowup "Does the participant agree to the blood draws and follow up visits"
label define _gy7IhNitOV 1 "Yes" 0 "No"
label values agreefollowup _gy7IhNitOV

label variable welltoday "Does the participant report feeling well today"
label define _BrxLFnzZk7 1 "Yes" 0 "No"
label values welltoday _BrxLFnzZk7

label variable notill "Participant currently without evidence of illness"
label define _Y9jLH5j4gQ 1 "Yes" 0 "No"
label values notill _Y9jLH5j4gQ

label variable eggallergy "Is the participant without allergy to eggs"
label define _PNUgC88J4m 1 "Yes" 0 "No"
label values eggallergy _PNUgC88J4m

label variable vaccinereaction "Does the participant deny any previous serious reactions to the flu vaccine"
label define _cKXsFKASyv 1 "Yes" 0 "No"
label values vaccinereaction _cKXsFKASyv

label variable reaction2yr "Is the past 2 years has the participant had a reaction to the flu vaccine"
label define _HbcXTK7u3e 0 "No" 1 "Yes"
label values reaction2yr _HbcXTK7u3e

label variable toldnovaccine "Has the participant been told not to have flu vaccine"
label define _Hj8Jb6g3V6 0 "No" 1 "Yes"
label values toldnovaccine _Hj8Jb6g3V6

label variable guillainbarre "Is the participant without evidence or history of Guillain-Barre syndrome"
label define _LLZxnLQ0hh 1 "Yes" 0 "No"
label values guillainbarre _LLZxnLQ0hh

label variable nomci_dementia "Is the participant without MCI or Dementia diagnosis"
label define _KliNagWZOW 1 "Yes" 0 "No"
label values nomci_dementia _KliNagWZOW

label variable nofluvac8mo "Did the participant receive a flu vaccine more than 8 months ago"
label define _XOMkss16vn 1 "Yes" 0 "No"
label values nofluvac8mo _XOMkss16vn

label variable afebrilepastmo "Has the participant been afebrile with no reports of upper respiratory infection in the past month"
label define _uTN3UjwM5Z 1 "Yes" 0 "No"
label values afebrilepastmo _uTN3UjwM5Z

label variable immunosuppressant "Does the participant deny using immunosuppressant medications every day"
label define _G1WYPm8riM 1 "Yes" 0 "No"
label values immunosuppressant _G1WYPm8riM

label variable dailyantiinflmeds "Does the participant deny using anti-inflammatory medications every day?Review current medication list"
label define _AwzhpDNxLY 1 "Yes" 0 "No"
label values dailyantiinflmeds _AwzhpDNxLY

label variable ca_treatment "Does the participant deny current treatment for cancer"
label define _mUNMgZwJ4j 1 "Yes" 0 "No"
label values ca_treatment _mUNMgZwJ4j

label variable anemic "Participant is not annemic per current visit CBC"
label define _o0fooFSu5u 1 "Yes" 0 "No"
label values anemic _o0fooFSu5u

label variable eligibility_fluvac "Participant satisfies all eligibility criteria"
label define _eyx58zVsLY 1 "Yes" 0 "No"
label values eligibility_fluvac _eyx58zVsLY

label variable day0reveligib "Day 0 Confirm eligibility criteria and review side effects"
label define _aWrIMzS3ob 1 "Yes" 0 "No"
label values day0reveligib _aWrIMzS3ob

label variable day0temp "Day 0 Body temperature"

label variable day0pulse "Day 0 Pulse"

label variable day0resp "Day 0 Respirations"

label variable day0bpsystolic "Day 0 systolic BP"

label variable day0bpdiastolic "Day 0 diastolic BP"

label variable day0fasting "Day 0 Fasting"
label define _Z7C1dy7YgU 1 "Yes" 0 "No"
label values day0fasting _Z7C1dy7YgU

label variable day0blood "Day 0 blood draw"
label define _h3DOi2PYop 1 "Yes" 0 "No"
label values day0blood _h3DOi2PYop

label variable day0bldrattempts "Day 0 Blood draw attempts"

label variable d0locationrl "Day 0 Location RL"
label define _mMvZxF6fOq 1 "Right arm" 2 "Left arm" 3 "Both"
label values d0locationrl _mMvZxF6fOq

label variable d0locationspecify "Day 0 Location specify"
label define _Frj6cuQK2W 1 "Anticubital" 3 "Lower arm" 2 "Upper arm" 4 "Hand"
label values d0locationspecify _Frj6cuQK2W

label variable day0bldrawtime "Day 0 Blood draw time"

label variable day0bldrampm "Day 0 Blood draw Am Pm"
label define _ZQYXEfzTUr 1 "Am" 2 "Pm"
label values day0bldrampm _ZQYXEfzTUr

label variable vaccinetype "Flu Vaccine type"

label variable vaccinelotno "Flu Vaccine Lot number"

label variable testerid2 "Flu vaccine given TID"

label variable admvaccine "Flu Vaccine injection site"
label define _tNymUTOK0j 2 "Left arm" 1 "Right arm"
label values admvaccine _tNymUTOK0j

label variable instructions "Post flu vaccine instructions provided"
label define _H9MrSkqw5j 1 "Yes" 0 "No"
label values instructions _H9MrSkqw5j

label variable day7temp "Day 7 Body temperature"

label variable day7pulse "Day 7 Pulse"

label variable day7resp "Day 7 Respirations"

label variable day7bpsystolic "Day 7 systolic BP"

label variable day7bpdiastolic "Day 7 diastolic BP"

label variable day7fasting "Day 7 Fasting"
label define _mGdUFRUDj5 1 "Yes" 0 "No"
label values day7fasting _mGdUFRUDj5

label variable day7blood "Day 7 blood draw"
label define _cxLHnQvD3b 1 "Yes" 0 "No"
label values day7blood _cxLHnQvD3b

label variable day7bldrattempts "Day 7 Blood draw attempts"

label variable d7locationrl "Day 7 Location RL"
label define _r9MmvqDced 2 "Left arm" 1 "Right arm" 3 "Both"
label values d7locationrl _r9MmvqDced

label variable d7locationspecify "Day 7 Location specify"
label define _eWHAaYN63D 1 "Anticubital" 3 "Lower arm" 2 "Upper arm" 4 "Hand"
label values d7locationspecify _eWHAaYN63D

label variable day7bldrawtime "Day 7 Blood draw time"

label variable day7bldrampm "Day 7 Blood draw Am Pm"
label define _wJWMv5qSMl 1 "Am" 2 "Pm"
label values day7bldrampm _wJWMv5qSMl

label variable d7chestpain "Day 71 Chest Pain"
label define _gMgmuLJvfe 0 "No" 1 "Yes"
label values d7chestpain _gMgmuLJvfe

label variable d7chestpainstill "Day 7 Chest Pain still present"

label variable d7vomiting "Day 7 Vomiting"
label define _DFeghRl35h 0 "No" 1 "Yes"
label values d7vomiting _DFeghRl35h

label variable d7vomitingstill "Day 7 Vomiting still present"

label variable d7headache "Day 7 Headache"
label define _tWgTZlURes 0 "No" 1 "Yes"
label values d7headache _tWgTZlURes

label variable d7headachestill "Day 7 Headache still present"

label variable d7sob "Day 7 shortness of breath"
label define _kQZIxsrQbI 0 "No" 1 "Yes"
label values d7sob _kQZIxsrQbI

label variable d7sobstill "Day 7 SOB still present"

label variable d7fever "Day 7 Fever aches and or chills"
label define _NsGm1tyZLx 0 "No" 1 "Yes"
label values d7fever _NsGm1tyZLx

label variable d7feverstill "Day 7 Fever aches and or chills still present"

label variable d7cough "Day 7 Cough"
label define _EasO7sIq2O 0 "No" 1 "Yes"
label values d7cough _EasO7sIq2O

label variable d7coughstill "Day 7 Cough still present"

label variable d7fatigue "Day 7 severe fatigue"
label define _MQ0Y1weVdj 0 "No" 1 "Yes"
label values d7fatigue _MQ0Y1weVdj

label variable d7fatiguestill "Day 7 severe fatigue still present"

label variable d7hospital "Day 7 in the past week or since you last talked to staff have you been hospitalized or had an ER visit"
label define _KoEthMUmZ9 0 "No" 1 "Yes"
label values d7hospital _KoEthMUmZ9

label variable day21temp "Day 21 Body temperature"

label variable day21pulse "Day 21 Pulse"

label variable day21resp "Day 21 Respirations"

label variable day21bpsystolic "Day 21 systolic BP"

label variable day21bpdiastolic "Day 21 diastolic BP"

label variable day21fasting "Day 21 Fasting"
label define _QsqU51V77L 1 "Yes" 0 "No"
label values day21fasting _QsqU51V77L

label variable day21blood "Day 21 blood draw"
label define _eHxnjPDmEM 1 "Yes" 0 "No"
label values day21blood _eHxnjPDmEM

label variable day21bldrattempts "Day 21 Blood draw attempts"

label variable d21locationrl "Day 21 Location RL"
label define _YbY9nOxdRz 2 "Left arm" 1 "Right arm" 3 "Both"
label values d21locationrl _YbY9nOxdRz

label variable d21locationspecify "Day 21 Location specify"
label define _CwYOIm2zR8 1 "Anticubital" 2 "Upper arm" 3 "Lower arm" 4 "Hand"
label values d21locationspecify _CwYOIm2zR8

label variable day21bldrawtime "Day 21 Blood draw time"

label variable day21bldrampm "Day 21 Blood draw Am Pm"
label define _CJoIgPU1No 1 "Am" 2 "Pm"
label values day21bldrampm _CJoIgPU1No

label variable d21chestpain "Day 21 Chest Pain"
label define _gfgMCTV627 0 "No" 1 "Yes"
label values d21chestpain _gfgMCTV627

label variable d21chestpainstill "Day 21 Chest Pain still present"

label variable d21vomiting "Day 21 Vomiting"
label define _hsjeUdPaJX 0 "No" 1 "Yes"
label values d21vomiting _hsjeUdPaJX

label variable d21vomitingstill "Day 21 Vomiting still present"

label variable d21headache "Day 21 Headache"
label define _tcDw4imk3e 0 "No" 1 "Yes"
label values d21headache _tcDw4imk3e

label variable d21headachestill "Day 21 Headache still present"

label variable d21sob "Day 21 shortness of breath"
label define _gLMVBNqyVs 0 "No" 1 "Yes"
label values d21sob _gLMVBNqyVs

label variable d21sobstill "Day 21 SOB still present"

label variable d21fever "Day 21 Fever aches and or chills"
label define _e1S78oy63m 0 "No" 1 "Yes"
label values d21fever _e1S78oy63m

label variable d21feverstill "Day 21 Fever aches and or chills still present"

label variable d21cough "Day 21 Cough"
label define _A8xDM4fBXZ 0 "No" 1 "Yes"
label values d21cough _A8xDM4fBXZ

label variable d21coughstill "Day 21 Cough still present"

label variable d21fatigue "Day 21 severe fatigue"
label define _QMP02D1dcb 0 "No" 1 "Yes"
label values d21fatigue _QMP02D1dcb

label variable d21fatiguestill "Day 21 severe fatigue still present"

label variable d21hospital "Day 21 in the past week or since you last talked to staff have you been hospitalized or had an ER visit"
label define _vvu0osLzcy 0 "No" 1 "Yes"
label values d21hospital _vvu0osLzcy

