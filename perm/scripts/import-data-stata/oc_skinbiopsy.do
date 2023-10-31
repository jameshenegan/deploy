clear
import delimited "../data-csv/oc_skinbiopsy.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_skibio "CRF Version"

label variable sb01 "Skin Biopsy consent reviewed"
label define _GlUZ75NrKA 1 "Yes" 0 "No"
label values sb01 _GlUZ75NrKA

label variable sb02 "Eligibility criteria reviewed"
label define _oZ2o0Z8iqK 1 "Yes" 0 "No"
label values sb02 _oZ2o0Z8iqK

label variable sb03 "Pre procedure body temperature"

label variable sb04 "Pre procedure pulse"

label variable sb05 "Pre procedure respirations"

label variable sb06s "Pre procedure BP systolic"

label variable sb06d "Pre procedure BP diastolic"

label variable sb07 "Brief History and Physical performed"
label define _GlJMHu4osq 1 "Yes" 0 "No"
label values sb07 _GlJMHu4osq

label variable sb09 "Total amount of Anesthesia given"

label variable sb11 "Biopsy performed"
label define _BXec7mapD5 1 "Yes" 0 "No"
label values sb11 _BXec7mapD5

label variable sb12 "Dressing applied"
label define _PbXBydyz2U 1 "Yes" 0 "No"
label values sb12 _PbXBydyz2U

label variable sb13 "Post procedure instructions reviewed"
label define _wWn5OXCaS7 1 "Yes" 0 "No"
label values sb13 _wWn5OXCaS7

label variable sbneedle "Skin Biopsy needle size"
label define _WoRbGW2WuP 1 "6mm"
label values sbneedle _WoRbGW2WuP

label variable sbpostpulse "Post procedure pulse"

label variable sbpostresp "Post procedure respirations"

label variable sbpostsystolic "Post procedure BP systolic"

label variable sbpostdiastolic "Post procedure BP diastolic"

label variable sbsamples "All samples collected"
label define _UU4kRFtxhK 1 "Yes" 0 "No"
label values sbsamples _UU4kRFtxhK

label variable testerid_skibio "Tester ID"

label variable provideinformedconsent_skibio "Able to provide informed consent"
label define _qEZIptk7U1 1 "Yes" 0 "No"
label values provideinformedconsent_skibio _qEZIptk7U1

label variable nohxbleedingdisorder_skibio "Does not have history of bleeding disorder"
label define _PKcn3H3wtk 1 "Yes" 0 "No"
label values nohxbleedingdisorder_skibio _PKcn3H3wtk

label variable nomedsincrbleeding_skibio "Does not take medications that will increase bleeding"
label define _Iubiw8HS9z 1 "Yes" 0 "No"
label values nomedsincrbleeding_skibio _Iubiw8HS9z

label variable nonsaids_skibio "Does not use NSAIDS that they cannot stop 4 days before and 3 days after procedure"
label define _t9nPINYW2b 1 "Yes" 0 "No"
label values nonsaids_skibio _t9nPINYW2b

label variable lessth81mgaspirin_skibio "Does not take more than 81 mg Aspirin a day"
label define _I9GOh92W0E 1 "Yes" 0 "No"
label values lessth81mgaspirin_skibio _I9GOh92W0E

label variable noallergylocanesthetic "Is not allergic to Lidocaine or other local anesthetic"
label define _GqlNVchWCv 1 "Yes" 0 "No"
label values noallergylocanesthetic _GqlNVchWCv

label variable noinfectionskincond_skibio "Has no active infection or chronic skin condition around biopsy site"
label define _WI9Sugq9At 1 "Yes" 0 "No"
label values noinfectionskincond_skibio _WI9Sugq9At

label variable notpregnant_skibio "Is not pregnant"
label define _NUX1xFpxWc 1 "Yes" 0 "No"
label values notpregnant_skibio _NUX1xFpxWc

label variable eligibility_skibio "Eligibility"
label define _UgVmH4DW3J 1 "Yes" 0 "No"
label values eligibility_skibio _UgVmH4DW3J

label variable anesthesiastart "Anesthesia start time"

label variable ampm1 "Anesthesia start time AmPm"
label define _ZZOMMwJIEc 1 "Am" 2 "Pm"
label values ampm1 _ZZOMMwJIEc

label variable biopsystart "Biopsy started"

label variable ampm2 "Biopsy started AmPm"
label define _tMMOc7hQh1 1 "Am" 2 "Pm"
label values ampm2 _tMMOc7hQh1

label variable biopsycomplete "Biopsy completed"

label variable ampm3 "Biopsy completed AmPm"
label define _PJNFMV6IdP 1 "Am" 2 "Pm"
label values ampm3 _PJNFMV6IdP

label variable sbtid1 "Biopsy tester ID"

label variable sbfatobtained "total amount of fat obtained"

label variable sbtestid "Biopsy tester ID"

label variable sb08 "Anesthesia start time"

label variable sb10s "Biopsy started"

label variable sb10c "Biopsy completed"

label variable sbtesterid "Biopsy tester ID"

label variable auto_id_skibio "Unique Teleform Number"

label variable testerid_1_skibio "Tester ID 1"

