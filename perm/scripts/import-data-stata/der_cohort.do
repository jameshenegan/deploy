clear
import delimited "../data-csv/der_cohort.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "BLSA Visit Number"

label variable visitmonth "Month of Visit"
label define _fYVgTuhvNcwt 6 "June" 8 "August" 3 "March" 5 "May" 7 "July" 10 "October" 4 "April" 9 "September" 11 "November" 1 "January" 2 "February" 12 "December"
label values visitmonth _fYVgTuhvNcwt

label variable visityear "Year of Visit"

label variable daysfromv1 "Days Since Visit 1 Baseline"

label variable yearsfromv1 "Years Since Visit 1 Baseline"

label variable yearsfromprevvisit "Years Since Previous Visit"

label variable visitseq "Sequential Visit Number"

label variable numvisits "Number of Visits"

label variable visittype "Type of Visit"
label define _V4bhL60w1fNe 1 "Clinical" 2 "Home" 3 "Clinical + Home Split Visit"
label values visittype _V4bhL60w1fNe

label variable homevisit "Home Visit Indicator"
label define _BBC4i8QwuTPK 0 "Clinic Visit" 1 "Home Visit"
label values homevisit _BBC4i8QwuTPK

label variable visitduration "Visit Encounter Duration"

label variable laststatus "Last Known Status"
label define _sQGpDFFAV1g1 2 "Deceased" 1 "On Study" 3 "Withdrawn" 4 "Terminated"
label values laststatus _sQGpDFFAV1g1

label variable v1tostatusdays "Days from Visit 1 to Last Identified Study Status Date"

