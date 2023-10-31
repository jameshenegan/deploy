clear
import delimited "../data-csv/oc_emg.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_emg "CRF Version"

label variable emg01 "Foot temperature for peroneal"

label variable emg01a "Foot temperature for peroneal following heating"

label variable emg02 "Which leg was tested"
label define _Ab3IqQE4MU 0 "Right" 1 "Left"
label values emg02 _Ab3IqQE4MU

label variable emg02a "Why wasn't right leg tested"
label define _tK0lAuzIR7 4 "Other - explain" 3 "Trauma or surgery (including knee replacement)" 1 "Amputation" 2 "Ulcer"
label values emg02a _tK0lAuzIR7

label variable emg01a1 "Foot temperature for sural"

label variable emg01a2 "Foot temperature for sural following heating"

label variable emg01b "Foot temperature at end of tests"

label variable emg03a "Peroneal Test Completed Distal"
label define _N4PqsMV3lk 1 "Yes" 9 "Technical problems (no time)" 8 " Refused" 0 "Other" 4 "No response" 5 "Physical problems" 7 "Physical and mental problems" 6 "Mental problems"
label values emg03a _N4PqsMV3lk

label variable emg04a "Peroneal Test Completed Fibular Head"
label define _wvl03lEUbW 1 "Yes" 9 "Technical problems (no time)" 8 " Refused" 0 "Other" 4 "No response" 5 "Physical problems" 7 "Physical and mental problems" 6 "Mental problems"
label values emg04a _wvl03lEUbW

label variable emg05a "Peroneal Test Completed Popliteal Fossa"
label define _QaKPcfuTxP 1 "Yes" 9 "Technical problems (no time)" 8 " Refused" 0 "Other" 4 "No response" 5 "Physical problems" 7 "Physical and mental problems" 6 "Mental problems"
label values emg05a _QaKPcfuTxP

label variable emg06a "Sural TestCompleted LowerLeg"
label define _bR7qjwo3Wd 1 "Yes" 9 "Technical problems (no time)" 8 " Refused" 0 "Other" 4 "No response" 5 "Physical problems" 7 "Physical and mental problems" 6 "Mental problems"
label values emg06a _bR7qjwo3Wd

label variable emg08 "Were files exported"
label define _aTR8RTXeHD 1 "Yes" 0 "No"
label values emg08 _aTR8RTXeHD

label variable emg03b "Distal Amplitude"

label variable emg03c "Distal Latency"

label variable emg04b "Fibula head Amplitude"

label variable emg04c "Fibula head Latency"

label variable emg04d "Fibula head Conduction Velocity"

label variable emg05b "Popliteal Fossa Amplitude"

label variable emg05c "Popliteal Fossa Latency"

label variable emg05d "Popliteal Fossa Conduction Velocity"

label variable emg06b "Lower Leg Amplitude"

label variable emg06c "Lower Leg Latency"

label variable emg06c1 "Lower Leg Latency"

label variable emg06d "Lower Leg Conduction Velocity"

label variable emg07 "Which stimulus site was chosen for lower leg Sural"
label define _TzbuN6a0xo 1 "A1" 2 "A2" 3 "A3" 4 "A4"
label values emg07 _TzbuN6a0xo

label variable auto_id_emg "Unique Teleform Number"

label variable testerid_emg "Tester ID"

