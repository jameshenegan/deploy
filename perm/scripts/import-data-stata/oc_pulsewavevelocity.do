clear
import delimited "../data-csv/oc_pulsewavevelocity.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_pulwavvel "CRF Version"

label variable pwv01_pulwavvel "Was PWV performed"
label define _KsdwRynw3b 1 "Yes" 0 "No"
label values pwv01_pulwavvel _KsdwRynw3b

label variable pwv01a_pulwavvel "PWV reason not done"
label define _BvnElijVWp 999 "Technical problems" 0 "Other" 555 "Physical" 888 "Refused" 1 "Contraindication" 777 "Physical and Cognitive" 666 "Cognitive"
label values pwv01a_pulwavvel _BvnElijVWp

label variable pwv01b_pulwavvel "PWV Contraindications"
label define _murtXpYfaM 2 "Bilateral carotid bruits" 3 "Hardware on neck precluding access to carotid pulse" 1 "TIA or CVA within past 6 months"
label values pwv01b_pulwavvel _murtXpYfaM

label variable agi01_pulwavvel "Was AGI performed"
label define _v6Zt7EC36w 1 "Yes" 0 "No"
label values agi01_pulwavvel _v6Zt7EC36w

label variable agi01a_pulwavvel "AGI reason not done"
label define _IEUXhQJi7k 999 "Technical problems" 0 "Other" 555 "Physical" 888 "Refused" 1 "Contraindication" 777 "Physical and Cognitive" 666 "Cognitive"
label values agi01a_pulwavvel _IEUXhQJi7k

label variable agi01b_pulwavvel "AGI Contraindications"
label define _KYUdmJmBpJ 3 "Hardware on neck precluding access to carotid pulse" 2 "Bilateral carotid bruits" 1 "TIA or CVA within past 6 months"
label values agi01b_pulwavvel _KYUdmJmBpJ

label variable abi01_pulwavvel "Was ABI performed"
label define _cUp98vyY9z 1 "Yes both sides" 0 "No" 2 "Right only" 3 "Left only"
label values abi01_pulwavvel _cUp98vyY9z

label variable abi01a_pulwavvel "ABI reason not done"
label define _bPUcgLb7Br 999 "Technical problems" 0 "Other" 555 "Physical" 888 "Refused" 1 "Contraindication" 666 "Cognitive" 777 "Physical and Cognitive"
label values abi01a_pulwavvel _bPUcgLb7Br

label variable pwbp01_pulwavvel "Blood pressure"
label define _OMQRrE1LpJ 1 "Yes" 0 "No"
label values pwbp01_pulwavvel _OMQRrE1LpJ

label variable pwsbp_pulwavvel "BP systolic"

label variable pwdbp_pulwavvel "BP diastolic"

label variable pwmap_pulwavvel "BP MAP"

label variable vaseracolin "Was Vasera and Colin comparison study performed"
label define _bkGpyUZmcX 1 "Yes" 0 "No"
label values vaseracolin _bkGpyUZmcX

label variable pwran_pulwavvel "Randomization list"
label define _OVujgcyPPH 2 "SphgmoCor first Complior second" 1 "Complior first SphygmoCor second" 3 "Complior Only"
label values pwran_pulwavvel _OVujgcyPPH

label variable auto_id_pulwavvel "Unique Teleform Number"

label variable testerid_pulwavvel "Tester ID"

