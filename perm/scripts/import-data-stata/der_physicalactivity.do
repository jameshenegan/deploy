clear
import delimited "../data-csv/der_physicalactivity.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "BLSA Visit Number"

label variable hakcal "calories expended in exercise related activity - Harvard alumni scale"

label variable totkkwk "calories per kg expended in all activity"

label variable totkcal "calories expended in all activity"

label variable highxmin "minutes of vigorous actvity per week including brisk walking"

label variable walktime "minutes of any walking per week"

label variable exercise "exercise level 0=lt 30 mins and 3=gt 150 mins per week"
label define _EwfOt3PGoi 0 "Less than 30 minutes of high intensity exercise in the past two weeks" 3 "More than 150 minutes of high intensity exercise in the past two weeks" 2 "Between 75 and 150 minutes of high intensitiy exercise in the past two weeks" 1 "Between 30 and 75 minutes of high intensity exercise in the past two weeks"
label values exercise _EwfOt3PGoi

