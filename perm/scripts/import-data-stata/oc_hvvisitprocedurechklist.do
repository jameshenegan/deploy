clear
import delimited "../data-csv/oc_hvvisitprocedurechklist.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_hvvisproche "CRF Version"

label variable hvttime1 "HV Start time"

label variable hvttimea "Start time am pm"
label define _ukqtj9LHsb 1 "am" 2 "pm"
label values hvttimea _ukqtj9LHsb

label variable hvttime2 "HV Start time"

label variable hvttimeb "Start time am pm"
label define _Xsvt7BfjHk 2 "pm" 1 "am"
label values hvttimeb _Xsvt7BfjHk

label variable hvttype "Visit type"
label define _HBaHhkiuby 0 "Normal (default)" 1 "Continuation of previous visit"
label values hvttype _HBaHhkiuby

label variable hvt15 "Physician orders"
label define _TBc2FhcUHH 1 "Done" 0 "Not done"
label values hvt15 _TBc2FhcUHH

label variable hvt15id "Physician orders Tester ID"

label variable hvt15a "Physician orders RND"
label define _VmRPOmm22o 9 "9-Not scheduled/Not applicable" 4 "4-Refused" 5 "5-Unable (Physical or mental" 7 "7-No tester/no time" 6 "6-Equipment problem" 8 "8-Not eligible"
label values hvt15a _VmRPOmm22o

label variable hvt01 "BLSA Consent"
label define _E1fHO53a9h 1 "Done" 0 "Not done"
label values hvt01 _E1fHO53a9h

label variable hvt01id "BLSA Consent TID"

label variable hvt02 "HIPAA"
label define _OQerul4Pz0 1 "Done" 0 "Not done"
label values hvt02 _OQerul4Pz0

label variable hvt02id "HIPAA TID"

label variable hvt16 "Filming Consent"
label define _k633XeKrjd 1 "Done" 0 "Not done"
label values hvt16 _k633XeKrjd

label variable hvt16id "Filming Consent Tester ID"

label variable hvt16a "Filming Consent RND"
label define _gv2WuxVMNr 9 "9-Not scheduled/Not applicable" 4 "4-Refused" 5 "5-Unable (Physical or mental" 6 "6-Equipment problem" 7 "7-No tester/no time" 8 "8-Not eligible"
label values hvt16a _gv2WuxVMNr

label variable hvt03 "General Interview"
label define _uxVP4Mf5qy 1 "Done" 2 "Proxy" 0 "Not done"
label values hvt03 _uxVP4Mf5qy

label variable hvt03id "General Interview Tester ID"

label variable hvt03a "General Interview RND"
label define _m5bfP1D8q0 7 "7-No tester/no time" 4 "4-Refused" 5 "5-Unable (Physical or mental" 6 "6-Equipment problem" 8 "8-Not eligible" 9 "9-Not scheduled/Not applicable"
label values hvt03a _m5bfP1D8q0

label variable hvt03b "General Interview to be resch"

label variable hvt20 "Activity Related Fatigue Scale"
label define _vs9JTI4NDF 1 "Done" 0 "Not done"
label values hvt20 _vs9JTI4NDF

label variable hvt20id "Activity Related Fatigue Scale Tester ID"

label variable hvt20a "Activity Related Fatigue Scale RND"
label define _iVEXZ1zeKr 9 "9-Not scheduled/Not applicable" 4 "4-Refused" 7 "7-No tester/no time" 5 "5-Unable (Physical or mental" 6 "6-Equipment problem" 8 "8-Not eligible"
label values hvt20a _iVEXZ1zeKr

label variable hvt20b "Activity Related Fatigue Scale to be resch"

label variable hvt21 "Epworth Sleep Scale"
label define _gNWpdboBV4 1 "Done" 0 "Not done"
label values hvt21 _gNWpdboBV4

label variable hvt21id "Epworth Sleep Scale Tester ID"

label variable hvt21a "Epworth Sleep Scale RND"
label define _jr5nhgY3X6 9 "9-Not scheduled/Not applicable" 7 "7-No tester/no time" 4 "4-Refused" 5 "5-Unable (Physical or mental" 6 "6-Equipment problem" 8 "8-Not eligible"
label values hvt21a _jr5nhgY3X6

label variable hvt21b "Epworth Sleep Scale to be resch"

label variable hvt04 "Medical Interview"
label define _waqEgc9ohw 1 "Done" 2 "Proxy" 0 "Not done"
label values hvt04 _waqEgc9ohw

label variable hvt04id "Medical Interview Tester ID"

label variable hvt04a "Medical Interview RND"
label define _O1u9frtgtQ 7 "7-No tester/no time" 4 "4-Refused" 9 "9-Not scheduled/Not applicable" 5 "5-Unable (Physical or mental" 6 "6-Equipment problem" 8 "8-Not eligible"
label values hvt04a _O1u9frtgtQ

label variable hvt04b "Medical Interview to be resch"

label variable hvt05 "Physical Exam"
label define _ldpjsfHMz5 1 "Done" 0 "Not done"
label values hvt05 _ldpjsfHMz5

label variable hvt05id "Physical Exam Tester ID"

label variable hvt05a "Physical Exam RND"
label define _q2RcemEXvJ 4 "4-Refused" 9 "9-Not scheduled/Not applicable" 5 "5-Unable (Physical or mental" 6 "6-Equipment problem" 7 "7-No tester/no time" 8 "8-Not eligible"
label values hvt05a _q2RcemEXvJ

label variable hvt05b "Physical Exam to be resch"

label variable hvt06 "Grip Strength"
label define _oVeN1ZzK8w 1 "Done" 0 "Not done"
label values hvt06 _oVeN1ZzK8w

label variable hvt06id "Grip Strength Tester ID"

label variable hvt06a "Grip Strength RND"
label define _NKj8gEN7jM 4 "4-Refused" 9 "9-Not scheduled/Not applicable" 5 "5-Unable (Physical or mental" 6 "6-Equipment problem" 7 "7-No tester/no time" 8 "8-Not eligible"
label values hvt06a _NKj8gEN7jM

label variable hvt06b "Grip Strength to be resch"

label variable hvt07 "LE Physical Performance"
label define _hU9KRVoJz2 1 "Done" 0 "Not done"
label values hvt07 _hU9KRVoJz2

label variable hvt07id "LE Physical Performance Tester ID"

label variable hvt07a "LE Physical Performance RND"
label define _kus0H22KC5 4 "4-Refused" 9 "9-Not scheduled/Not applicable" 5 "5-Unable (Physical or mental" 6 "6-Equipment problem" 7 "7-No tester/no time" 8 "8-Not eligible"
label values hvt07a _kus0H22KC5

label variable hvt07b "LE Physical Performance to be resch"

label variable hvt08 "Neurological Assessment"
label define _TdQ1kxBrlW 1 "Done" 0 "Not done"
label values hvt08 _TdQ1kxBrlW

label variable hvt08id "Neurological Assessment Tester ID"

label variable hvt08a "Neurological Assessment RND"
label define _uyu59xeuVM 9 "9-Not scheduled/Not applicable" 4 "4-Refused" 5 "5-Unable (Physical or mental" 6 "6-Equipment problem" 7 "7-No tester/no time" 8 "8-Not eligible"
label values hvt08a _uyu59xeuVM

label variable hvt08b "Neurological Assessment to be resch"

label variable hvt09 "Core Cognitive Testing"
label define _kbmty32nUm 1 "Done" 0 "Not done"
label values hvt09 _kbmty32nUm

label variable hvt09id "Core Cognitive Testing Tester ID"

label variable hvt09a "Core Cognitive Testing RND"
label define _afdMyKxYRc 4 "4-Refused" 9 "9-Not scheduled/Not applicable" 5 "5-Unable (Physical or mental" 8 "8-Not eligible" 6 "6-Equipment problem" 7 "7-No tester/no time"
label values hvt09a _afdMyKxYRc

label variable hvt09b "Core Cognitive Testing to be resch"

label variable hvt10 "Medication List"
label define _eSTQkndLGv 1 "Done" 0 "Not done" 2 "Proxy"
label values hvt10 _eSTQkndLGv

label variable hvt10id "Medication List Tester ID"

label variable hvt10a "Medication List RND"
label define _KCV0ZeNhih 4 "4-Refused" 9 "9-Not scheduled/Not applicable" 5 "5-Unable (Physical or mental" 6 "6-Equipment problem" 7 "7-No tester/no time" 8 "8-Not eligible"
label values hvt10a _KCV0ZeNhih

label variable hvt10b "Medication List to be resch"
label define _Q77bzQSDxf 1 "To be rescheduled"
label values hvt10b _Q77bzQSDxf

label variable hvt11 "FFQ"
label define _Aek8E22oCI 1 "Done" 0 "Not done" 2 "Proxy"
label values hvt11 _Aek8E22oCI

label variable hvt11id "FFQ Tester ID"

label variable hvt11a "FFQ RND"
label define _aKv8dOFtVh 9 "9-Not scheduled/Not applicable" 4 "4-Refused" 7 "7-No tester/no time" 5 "5-Unable (Physical or mental" 8 "8-Not eligible" 6 "6-Equipment problem"
label values hvt11a _aKv8dOFtVh

label variable hvt11b "FFQ to be resch"
label define _zKnBfG4qph 1 "To be rescheduled"
label values hvt11b _zKnBfG4qph

label variable hvt17 "DVD"
label define _K9fvennBBR 1 "Done" 0 "Not done"
label values hvt17 _K9fvennBBR

label variable hvt17id "DVD Tester ID"

label variable hvt17a "DVD RND"
label define _GwKjS0dXCh 9 "9-Not scheduled/Not applicable" 4 "4-Refused" 5 "5-Unable (Physical or mental" 6 "6-Equipment problem" 7 "7-No tester/no time" 8 "8-Not eligible"
label values hvt17a _GwKjS0dXCh

label variable hvt18 "Autopsy Report"
label define _rPqq0bwwum 0 "Not done" 1 "Done" 2 "Proxy"
label values hvt18 _rPqq0bwwum

label variable hvt18id "Autopsy Report Tester ID"

label variable hvt18a "Autopsy Report RND"
label define _pvXDR7pzB7 9 "9-Not scheduled/Not applicable" 4 "4-Refused" 5 "5-Unable (Physical or mental" 6 "6-Equipment problem" 7 "7-No tester/no time" 8 "8-Not eligible"
label values hvt18a _pvXDR7pzB7

label variable hvt18b "Autopsy Report to be resch"

label variable hvt12 "Autopsy Consent"
label define _y5ctwVWl9j 1 "Done" 0 "Not done"
label values hvt12 _y5ctwVWl9j

label variable hvt12id "Autopsy Consent Tester ID"

label variable hvt12a "Autopsy Consent RND"
label define _oqiJD5v1gR 9 "9-Not scheduled/Not applicable" 4 "4-Refused" 5 "5-Unable (Physical or mental" 6 "6-Equipment problem" 7 "7-No tester/no time" 8 "8-Not eligible"
label values hvt12a _oqiJD5v1gR

label variable hvt12b "Autopsy Consent to be resch"

label variable hvt13 "Blood"
label define _WK0ZtcFjgc 3 "Consented" 0 "Not done" 1 "Done"
label values hvt13 _WK0ZtcFjgc

label variable hvt13id "Blood Tester ID"

label variable hvt13a "Blood RND"
label define _w0gnqnxT6E 4 "4-Refused" 9 "9-Not scheduled/Not applicable" 5 "5-Unable (Physical or mental" 6 "6-Equipment problem" 7 "7-No tester/no time" 8 "8-Not eligible"
label values hvt13a _w0gnqnxT6E

label variable hvt13b "Blood to be resch"

label variable hvt14 "EKG"
label define _miVwwWKQ0b 3 "Consented" 0 "Not done" 1 "Done"
label values hvt14 _miVwwWKQ0b

label variable hvt14id "EKG Tester ID"

label variable hvt14a "EKG RND"
label define _Tw8EOk3Qvb 4 "4-Refused" 9 "9-Not scheduled/Not applicable" 5 "5-Unable (Physical or mental" 6 "6-Equipment problem" 7 "7-No tester/no time" 8 "8-Not eligible"
label values hvt14a _Tw8EOk3Qvb

label variable hvt14b "EKG to be resch"

label variable hvt19 "Informant CDR"
label define _jGrslY3MIj 0 "Not done" 1 "Done" 3 "Consented"
label values hvt19 _jGrslY3MIj

label variable hvt19id "Informant CDR Tester ID"

label variable hvt19a "Informant CDR RND"
label define _w4oGFfes6q 9 "9-Not scheduled/Not applicable" 4 "4-Refused" 7 "7-No tester/no time" 5 "5-Unable (Physical or mental" 6 "6-Equipment problem" 8 "8-Not eligible"
label values hvt19a _w4oGFfes6q

label variable hvt19b "Informant CDR to be resch"
label define _m9wt8eRufz 1 "To be rescheduled"
label values hvt19b _m9wt8eRufz

label variable hvt22 "Accelerometer"
label define _l6HoJgDVmH 0 "Not done" 1 "Done"
label values hvt22 _l6HoJgDVmH

label variable hvt22id "Accelerometer Tester ID"

label variable hvt22a "Accelerometer RND"
label define _zs5QJhiaQJ 9 "9-Not scheduled/Not applicable" 4 "4-Refused" 7 "7-No tester/no time" 6 "6-Equipment problem" 5 "5-Unable (Physical or mental" 8 "8-Not eligible"
label values hvt22a _zs5QJhiaQJ

label variable hvt22b "Accelerometer to be resch"

label variable hvfollowup "Additional Follow-up contact as needed between scheduled visit"
label define _DFiwIyq6cZ 1 "Yes" 0 "No"
label values hvfollowup _DFiwIyq6cZ

label variable hvreason "Reason for home visit"
label define _JKa2wcIKph 4 " Unable/unwilling to travel" 3 "Falls Risk" 1 "Caregiver" 2 "Cognitive Impairment" 5 "Clinic staff has concern for participant's safety on the unit"
label values hvreason _JKa2wcIKph

label variable auto_id_hvvisproche "Unique Teleform Number"

