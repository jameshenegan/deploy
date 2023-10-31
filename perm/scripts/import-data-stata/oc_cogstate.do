clear
import delimited "../data-csv/oc_cogstate.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_cogsta "CRF Version"

label variable randomizationid "Randomization number"

label variable handprob "Does the participant have physical hand problems"
label define _zJZD5Nphjh 0 "No" 1 "Yes"
label values handprob _zJZD5Nphjh

label variable done_cogsta "Was Cog State protocol completed"
label define _zxKyhL9mGC 1 "Yes" 0 "No"
label values done_cogsta _zxKyhL9mGC

label variable rnd "Reason test not performed or unsatisfactory"
label define _TQHTpHXkEd 1 "Other (please specify)" 999 "Technical problems (includes no time or no tester)" 555 "Physical problems" 888 "Refused" 666 "Mental problems" 777 "Physical and mental problems"
label values rnd _TQHTpHXkEd

label variable testerid_cogsta "Tester ID"

