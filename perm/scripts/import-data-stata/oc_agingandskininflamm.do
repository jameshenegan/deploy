clear
import delimited "../data-csv/oc_agingandskininflamm.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_agiandskiinf "CRF Version"

label variable rash6mo "Have you had an itchy rash that was coming and going for at least 6 months"
label define _JJ1CXVOq3I 0 "No" 1 "Yes"
label values rash6mo _JJ1CXVOq3I

label variable rash12mo "Have you had this itchy rash at any time in the past 12 months"
label define _Y6yMAH7dcf 0 "No" 1 "Yes"
label values rash12mo _Y6yMAH7dcf

label variable rashlocation "Has this rash affected the folds of the elbows behind knees front of ankles under buttocks or around neck ears or eyes"
label define _Uol2sPFCaZ 0 "No" 1 "Yes"
label values rashlocation _Uol2sPFCaZ

label variable eczemadx "Have you been diagnosed by a doctor with atopic dermatitis also known as eczema"
label define _u1QcWtRNpM 0 "No" 1 "Yes"
label values eczemadx _u1QcWtRNpM

label variable dryskinhx "Do you have a history of generally dry skin"
label define _A7VdBbYjlI 0 "No" 1 "Yes"
label values dryskinhx _A7VdBbYjlI

label variable usemoisturizer "Have you regularly used a skin moisturizer emollient over the past year"
label define _eRrl1How8C 1 "Yes" 0 "No"
label values usemoisturizer _eRrl1How8C

label variable sunexp1hr "Outdoors for about 1 hr at noon without sunscreen would skin become ink red irritated tender or itchy"
label define _GVEnOmW9Ht 0 "No" 1 "Yes"
label values sunexp1hr _GVEnOmW9Ht

label variable sunexp7days "Over the next 7 days, would you then develop a tan or notice your skin becoming darker"
label define _KVAIuP06lz 1 "Yes" 0 "No"
label values sunexp7days _KVAIuP06lz

label variable skintype "Category that best characterizes your skin"
label define _g0Dfdo7TaQ 6 "No skin irritation tenderness or itching in sun-exposed skin no noticeable changes in skin in sun-exposed sites in temperate climates" 4 "Minimal skin irritation tenderness or itching in sun-exposed skin then develops a deep tan or skin becomes darker in the sun-exposed sites (no skin irritation tenderness or itching at 24 hrs and a tan or darker skin at 7 days)" 5 "Occasional skin irritation tenderness or itching in sun-exposed skin then develops darker skin in sun-exposed sites in temperate climates" 2 "Easily burns then develops a light tan (painful burn at 24 hrs and a light tan at 7 days)" 3 "Mild burning skin irritation tenderness or itching in sun-exposed sites ( slightly tender itching at 24 hrs moderate tan or slightly darker at 7 days)" 1 "Always burns never develops a tan (painful burn at 24 hrs and no tan at 7 days)"
label values skintype _g0Dfdo7TaQ

