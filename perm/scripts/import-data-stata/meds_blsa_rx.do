clear
import delimited "../data-csv/meds_blsa_rx.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable drug "Drug Name"

label variable dose "Amount per tablet or other unit"

label variable dose_units "Units for the amount"
label define _Bg9ROgMAYc 1 "mg" 3 "Other than mg or cc" 4 "Unspecified" 2 "cc or mL" 0 "." 5 "." 23 "."
label values dose_units _Bg9ROgMAYc

label variable route "How medication is taken"
label define _VyCCMVtyvL 1 "All p.o. except sublingual" 4 "Eye/nose topicals/sprays" 5 "Other topicals" 3 "Inhaler" 7 "Parenteral" 6 "Suppositories" 2 "Sublingual" 9 "Other/unknown" 8 "Intra-articular" 0 "." 14 "."
label values route _VyCCMVtyvL

label variable freq_day "Doses per day"

label variable freq_week "Doses per week"

label variable use "Use"
label define _H7HPohjozU 1 "Regularly" 2 "Occasionally" 3 "Stopped" 5 "Multiple Courses" 4 "Current short term use" 7 "." 0 "."
label values use _H7HPohjozU

label variable length_of_use "Length of use"
label define _nYwnBXufgh 4 "One to five years" 5 "More than five years" 1 "Less than one month" 2 "One to five months" 3 "Six to eleven months" 9 "." 7 "." 6 "." 8 "."
label values length_of_use _nYwnBXufgh

label variable length_of_stopped "If stopped, how long ago"
label define _MXrtkSSzKy 4 "One to five years" 2 "One to five months" 3 "Six to eleven months" 1 "Less than one month" 5 "More than five years" 6 "." 14 "." 0 "." 13 "."
label values length_of_stopped _MXrtkSSzKy

label variable reason_stopped "If stopped, reason for stopping"
label define _VOJdWnPnrR 2 "Not needed" 1 "Completed course" 3 "Side effects" 4 "Lacked efficacy" 6 "Unknown" 7 "Convenience" 5 "Rx expired" 0 "."
label values reason_stopped _VOJdWnPnrR

label variable taken_last_48_hrs "Taken in last 48 hours"
label define _D6e9cueNIb 1 "Yes" 0 "No" 2 "Unsure" 4 "." 5 "." 3 "." 11 "."
label values taken_last_48_hrs _D6e9cueNIb

label variable irregular "Irregular Dosage"

label variable dosenote "Dosage Note"

label variable who "ATC Code(s) found in WHO file"

label variable atc1 "ATC Code 1"

label variable atc2 "ATC Code 2"

label variable atc3 "ATC Code 3"

label variable atc4 "ATC Code 4"

label variable atc5 "ATC Code 5"

label variable atc6 "ATC Code 6"

label variable atc7 "ATC Code 7"

label variable atc8 "ATC Code 8"

label variable atc9 "ATC Code 9"

label variable atc10 "ATC Code 10"

label variable atc11 "ATC Code 11"

label variable atc12 "ATC Code 12"

label variable atc13 "ATC Code 13"

label variable atc14 "ATC Code 14"

label variable atc15 "ATC Code 15"

