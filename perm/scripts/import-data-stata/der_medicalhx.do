clear
import delimited "../data-csv/der_medicalhx.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "BLSA Visit Number"

label variable mi_hx_ever "Self-Reported History of MI"
label define _Pe4l3bE6fCJK 0 "No" 1 "Yes"
label values mi_hx_ever _Pe4l3bE6fCJK

label variable hf_hx_ever "Self-Reported History of HF"
label define _GeCg888OpmOq 0 "No" 1 "Yes"
label values hf_hx_ever _GeCg888OpmOq

label variable angina_hx_ever "Self-Reported History of Angina"
label define _pOw9A6Vy6RyD 0 "No" 1 "Yes"
label values angina_hx_ever _pOw9A6Vy6RyD

label variable cld_hx_ever "Self-Reported History of CLD"
label define _FC1u3B500v91 0 "No" 1 "Yes"
label values cld_hx_ever _FC1u3B500v91

label variable asthma_hx_ever "Self-Reported History of Asthma"
label define _EDysAIYhdxi9 0 "No" 1 "Yes"
label values asthma_hx_ever _EDysAIYhdxi9

label variable liver_dz_hx_ever "Self-Reported History of Liver Disease"
label define _q4i19V10M5Bm 0 "No" 1 "Yes"
label values liver_dz_hx_ever _q4i19V10M5Bm

label variable hepatitis_hx_ever "Self-Reported History of Hepatitis"
label define _aOk34Zw164v7 0 "No" 1 "Yes"
label values hepatitis_hx_ever _aOk34Zw164v7

label variable hiv_hx_ever "Self-Reported History of HIV/AIDS"
label define _hLpGF5BCcm13 0 "No" 1 "Yes"
label values hiv_hx_ever _hLpGF5BCcm13

label variable ckd_hx_ever "Self-Reported History of CKD"
label define _DyFL586Dj2j2 0 "No" 1 "Yes"
label values ckd_hx_ever _DyFL586Dj2j2

label variable stroke_hx_ever "Self-Reported History of Stroke"
label define _cJte79oQjMpF 0 "No" 1 "Yes"
label values stroke_hx_ever _cJte79oQjMpF

label variable tia_hx_ever "Self-Reported History of TIA"
label define _T14Nyh5MvtK3 0 "No" 1 "Yes"
label values tia_hx_ever _T14Nyh5MvtK3

label variable pn_hx_ever "Self-Reported History of PN"
label define _T855O02KO7aP 0 "No" 1 "Yes"
label values pn_hx_ever _T855O02KO7aP

label variable htn_hx_ever "Self-Reported History of HTN"
label define _B1fLaJD4QTru 1 "Yes" 0 "No"
label values htn_hx_ever _B1fLaJD4QTru

label variable dm_hx_ever "Self-Reported History of DM"
label define _vs20f0J1uQcn 0 "No" 1 "Yes"
label values dm_hx_ever _vs20f0J1uQcn

label variable hld_hx_ever "Self-Reported History of HLD"
label define _XTXM391tQ30F 1 "Yes" 0 "No"
label values hld_hx_ever _XTXM391tQ30F

label variable vascular_proc_hx_ever "Self-Reported History of Vascular Procedures"
label define _beOf3GcUHb 0 "No" 1 "Yes"
label values vascular_proc_hx_ever _beOf3GcUHb

label variable cancer_hx_ever "Self-Reported History of Cancer"
label define _a03y9FS4KJLC 0 "No" 1 "Yes"
label values cancer_hx_ever _a03y9FS4KJLC

label variable arthritis_hx_ever "Self-Reported History of Arthritis"
label define _seuYpwRlAIKb 1 "Yes" 0 "No"
label values arthritis_hx_ever _seuYpwRlAIKb

label variable stenosis_hx_ever "Self-Reported History of Spinal Stenosis"
label define _rvCR580L40Se 0 "No" 1 "Yes"
label values stenosis_hx_ever _rvCR580L40Se

label variable osteoporosis_hx_ever "Self-Reported History of Osteoporosis"
label define _GGvRh74GIZD0 0 "No" 1 "Yes"
label values osteoporosis_hx_ever _GGvRh74GIZD0

label variable ctd_hx_ever "Self-Reported History of CTD"
label define _SBj7CuwBUYt9 0 "No" 1 "Yes"
label values ctd_hx_ever _SBj7CuwBUYt9

label variable parkinson_hx_ever "Self-Reported History of Parkinson"
label define _d373JAZe7sBl 0 "No" 1 "Yes"
label values parkinson_hx_ever _d373JAZe7sBl

label variable pad_hx_ever "Self-Reported History of PAD"
label define _I8VF5FrNy0e8 0 "No" 1 "Yes"
label values pad_hx_ever _I8VF5FrNy0e8

label variable pvd_hx_ever "Self-Reported History of Varicose Veins"
label define _ZwZQnCo349p0 0 "No" 1 "Yes"
label values pvd_hx_ever _ZwZQnCo349p0

label variable cataract1_hx_ever "Self-Reported History of Cataracts"
label define _QyVzszlIe2 0 "No" 1 "Yes"
label values cataract1_hx_ever _QyVzszlIe2

label variable cataract2_hx_ever "Self-Reported History of Cataracts (both eyes)"
label define _Z18Uw65blV 1 "Yes" 0 "No"
label values cataract2_hx_ever _Z18Uw65blV

label variable cataract_surg_hx_ever "Self-Reported History of Cataract Procedures"
label define _El758VM5Cj 0 "No" 1 "Yes"
label values cataract_surg_hx_ever _El758VM5Cj

label variable ulcer_hx_ever "Self-Reported History of Ulcer"
label define _d774hN16Uj19 0 "No" 1 "Yes"
label values ulcer_hx_ever _d774hN16Uj19

label variable depression_hx_ever "Self-Reported History of Depression"
label define _IQYDQ9cdcS 0 "No" 1 "Yes"
label values depression_hx_ever _IQYDQ9cdcS

label variable covid_hx_ever "Self-Reported History of COVID-19"
label define _yRm03QhEMwgT 0 "No" 1 "Yes"
label values covid_hx_ever _yRm03QhEMwgT

