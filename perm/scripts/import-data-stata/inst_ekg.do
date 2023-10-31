clear
import delimited "../data-csv/inst_ekg.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable vent "Heart Rate"

label variable pr "PR Interval time (ms)"

label variable qrs "QRS Complex time (ms)"

label variable qt "QT Interval time (ms)"

label variable qtc "QT Interval time (ms) corrected for heart rate"

label variable pacemaker "Pacemaker"

label variable dig_version "dig_version"

