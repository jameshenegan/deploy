clear
import delimited "../data-csv/diagnoses_blsadx.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable category "Category"

label variable certainty "Certainty"

label variable dx_index "Diagnosis Index"

label variable icd9_1 "ICD9 Code 1"

label variable icd9_2 "ICD9 Code 2"

label variable icd9_3 "ICD9 Code 3"

label variable source "Source"

label variable visit "Visit"

label variable year_1st_act "Year First"

label variable year_last_act "Year Last"

