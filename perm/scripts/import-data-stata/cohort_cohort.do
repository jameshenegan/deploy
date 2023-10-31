clear
import delimited "../data-csv/cohort_cohort.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable visit_cancelled_status "Visit Cancelled"
label define _qmU2UmHqRO 0 "Not cancelled"
label values visit_cancelled_status _qmU2UmHqRO

label variable last_status_id "Last Status ID"
label define _MCkc0SMQIh 108 "Deceased" 7 "On Study" 106 "Withdrawn" 107 "Terminated"
label values last_status_id _MCkc0SMQIh

label variable last_due_letter_status "Last Due Letter Status"
label define _Lt5R5txHdj 108 "Scheduled" 1 "Phone Call" 105 "Withdrawn" 7 "Deceased" 101 "Canceled" 9 "Letter"
label values last_due_letter_status _Lt5R5txHdj

label variable last_substatus_neuroimaging "Last Substatus: NeuroImaging"
label define _VBhSH3j79i 1 "Last Substatus: NeuroImaging"
label values last_substatus_neuroimaging _VBhSH3j79i

label variable last_substatus_neuroimag_tau "Last Substatus: NeuroImagingTAU"
label define _rX6NzF50Wl 2 "Last Substatus: NeuroImagingTAU"
label values last_substatus_neuroimag_tau _rX6NzF50Wl

label variable last_substatus_home_visit "Last Substatus: HomeVisit"
label define _dHjRtIRWMz 3 "Last Substatus: HomeVisit"
label values last_substatus_home_visit _dHjRtIRWMz

label variable last_substatus_hv_remote "Last Substatus: HomeVisitRemote"
label define _OHFdJZGXtb 4 "Last Substatus: HomeVisitRemote"
label values last_substatus_hv_remote _OHFdJZGXtb

label variable last_substatus_ltfu "Last Substatus: LostToFolowup"
label define _nRli2t9eaN 5 "Last Substatus: LostToFolowup"
label values last_substatus_ltfu _nRli2t9eaN

label variable last_substatus_on_study_dem "Last Substatus: OnStudyDememtia"
label define _ePF6l0ODd1 6 "Last Substatus: OnStudyDememtia"
label values last_substatus_on_study_dem _ePF6l0ODd1

label variable last_substatus_autopsy "Last Substatus: Autopsy"
label define _AfFNBfnriV 7 "Last Substatus: Autopsy"
label values last_substatus_autopsy _AfFNBfnriV

label variable last_substatus_not_interested "Last Substatus: Not Interested"
label define _lzymQjL8Ad 9 "Last Substatus: Not Interested"
label values last_substatus_not_interested _lzymQjL8Ad

label variable last_substatus_travel_issues "Last Substatus: Travel Issues"
label define _FgNBt2TEpo 10 "Last Substatus: Travel Issues"
label values last_substatus_travel_issues _FgNBt2TEpo

label variable last_substatus_dissatisfied "Last Substatus: Dissatisfied"
label define _TuoVYbpwMR 11 "Last Substatus: Dissatisfied"
label values last_substatus_dissatisfied _TuoVYbpwMR

label variable last_substatus_health_reasons "Last Substatus: Health Reasons"
label define _EXlRGsGJVu 12 "Last Substatus: Health Reasons"
label values last_substatus_health_reasons _EXlRGsGJVu

label variable last_substatus_refusing_tests "Last Substatus: Refusing Tests"
label define _gUVm6mqdxo 14 "Last Substatus: Refusing Tests"
label values last_substatus_refusing_tests _gUVm6mqdxo

label variable last_substatus_behavior_issues "Last Substatus: Behavioral Issues"
label define _ymw7zw714e 15 "Last Substatus: Behavioral Issues"
label values last_substatus_behavior_issues _ymw7zw714e

label variable last_substatus_term_dementia "Last Substatus: Terminated Dementia"
label define _vKeGsGzuZp 16 "Last Substatus: Terminated Dementia"
label values last_substatus_term_dementia _vKeGsGzuZp

