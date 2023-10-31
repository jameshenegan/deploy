clear
import delimited "../data-csv/der_cohort_id.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "BLSA Visit Number"

label variable v1todeathdays "Days from Visit 1 to Death (if known death)"

