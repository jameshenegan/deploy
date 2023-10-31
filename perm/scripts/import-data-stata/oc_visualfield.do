clear
import delimited "../data-csv/oc_visualfield.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_visfie "CRF Version"

label variable vissc1_visfie "Do you wear glasses or contact lenses"
label define _mVXqAR3D7J 3 "For both distance and near" 1 "Near only (eg reading)" 0 "Never" 2 "Distance only (eg driving watching TV)"
label values vissc1_visfie _mVXqAR3D7J

label variable vissc2_visfie "Did you bring your glasses"
label define _m7Knn3FLPU 1 "Yes" 0 "No"
label values vissc2_visfie _m7Knn3FLPU

label variable vissc2a_visfie "Type of glasses or contact lenses"
label define _aJ1yAy6lcg 1 "Glasses" 2 "Contact Lenses"
label values vissc2a_visfie _aJ1yAy6lcg

label variable vissc2a1_visfie "Glasses"
label define _Kpi1zSne2L 4 "Progressives" 2 "Bifocal" 1 "Single vision" 3 "Trifocals"
label values vissc2a1_visfie _Kpi1zSne2L

label variable vissc2b_visfie "Contact Lenses"
label define _HPsaQ3bUlD 1 "Soft" 2 "RGP (hard)" 8 "Unknown"
label values vissc2b_visfie _HPsaQ3bUlD

label variable vissc2b1_visfie "Contact lenses for distance bifocal or monovision"
label define _xXNsHciXjy 1 "Distance" 2 "Bifocal" 3 "Monovision"
label values vissc2b1_visfie _xXNsHciXjy

label variable vissc2b2_visfie "Which eye distance"
label define _JzZQYKJv9F 8 "Unknown" 2 "Left" 1 "Right"
label values vissc2b2_visfie _JzZQYKJv9F

label variable visvfdis_visfie "Does participant have marked discrepency of vision between eyes"
label define _yh9F93F7n0 0 "No" 1 "Yes"
label values visvfdis_visfie _yh9F93F7n0

label variable vissc3a1_visfie "Right eye sphere Rx"

label variable vissc3a2_visfie "Right eye cylinder Rx"

label variable vissc3a3_visfie "Right eye Axis Rx"

label variable vissc3a4_visfie "Right eye sphere Rx final"

label variable vissc3b1_visfie "Left eye sphere Rx"

label variable vissc3b2_visfie "Left eye cylinder Rx"

label variable vissc3b3_visfie "Left eye Axis Rx"

label variable vissc3b4_visfie "Left eye sphere Rx final"

label variable vissc3c_visfie "Near add"

label variable visvfdon_visfie "Was visual field assessment completed"
label define _NDGZlftzXP 1 "Yes" 0 "No"
label values visvfdon_visfie _NDGZlftzXP

label variable visvfrnd_visfie "Why visual field not done"
label define _GGT9UKHSz6 555 "Physical problems (*includes if participant has marked discrepancy of vision between eyes" 999 "Technical problems" 888 "Refused" 666 "Physical and cognitive" 777 "Cognitive problems"
label values visvfrnd_visfie _GGT9UKHSz6

label variable auto_id_visfie "Unique Teleform Number"

label variable testerid_visfie "Tester ID"

