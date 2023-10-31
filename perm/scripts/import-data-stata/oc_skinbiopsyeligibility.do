clear
import delimited "../data-csv/oc_skinbiopsyeligibility.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_skibioeli "CRF Version"

label variable testerid_skibioeli "Tester ID"

label variable provideinformedconsent_skibioeli "Able to provide informed consent"
label define _T7LpgXTCdo 1 "Yes" 0 "No"
label values provideinformedconsent_skibioeli _T7LpgXTCdo

label variable nohxbleedingdisorder_skibioeli "Does not have history of bleeding disorder"
label define _AzN033Akcx 1 "Yes" 0 "No"
label values nohxbleedingdisorder_skibioeli _AzN033Akcx

label variable nomedsincrbleeding_skibioeli "Does not take medications that will increase bleeding"
label define _DHAVy8Whp6 1 "Yes" 0 "No"
label values nomedsincrbleeding_skibioeli _DHAVy8Whp6

label variable nonsaids_skibioeli "Does not use NSAIDS that they cannot stop 4 days before and 3 days after procedure"
label define _MSu9BJAxJi 1 "Yes" 0 "No"
label values nonsaids_skibioeli _MSu9BJAxJi

label variable lessth81mgaspirin_skibioeli "Does not take more than 81 mg Aspirin a day"
label define _S9ff5Ghr2s 1 "Yes" 0 "No"
label values lessth81mgaspirin_skibioeli _S9ff5Ghr2s

label variable noallergylocalanesthetic "Is not allergic to Lidocaine or other local anesthetic"
label define _Jg7DvHznem 1 "Yes" 0 "No"
label values noallergylocalanesthetic _Jg7DvHznem

label variable noinfectionskincond_skibioeli "Has no active infection or chronic skin condition around biopsy site"
label define _YGQOePzo0j 1 "Yes" 0 "No"
label values noinfectionskincond_skibioeli _YGQOePzo0j

label variable notpregnant_skibioeli "Is not pregnant"
label define _J8UlZvkkZu 1 "Yes" 0 "No"
label values notpregnant_skibioeli _J8UlZvkkZu

label variable eligibility_skibioeli "Eligibility"
label define _LzqvUnDFUM 1 "Yes" 0 "No"
label values eligibility_skibioeli _LzqvUnDFUM

