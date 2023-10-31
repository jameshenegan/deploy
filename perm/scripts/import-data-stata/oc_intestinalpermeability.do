clear
import delimited "../data-csv/oc_intestinalpermeability.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_intper "CRF Version"

label variable testerid_intper "Tester ID"

label variable amount "Amount of PEG given"

label variable timedispensed "Time dispensed"

label variable timeampm "Time ampm"
label define _RpVWt52sIy 2 "Pm" 1 "Am"
label values timeampm _RpVWt52sIy

label variable done_intper "Done not done"
label define _GwRQk27yuV 1 "Done" 0 "Not Done"
label values done_intper _GwRQk27yuV

label variable reasonnd "Reason not done"
label define _njqNMyDuRi 2 "Not Eligible" 1 "Refused" 3 "Technical"
label values reasonnd _njqNMyDuRi

label variable ua_volume "UA 24 hr Volume"

