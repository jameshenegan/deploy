clear
import delimited "../data-csv/oc_ideomotorapraxia.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_ideapr "CRF Version"

label variable ima01 "Gesture 1"
label define _BHNHlLJTWt 3 "Immediate success" 2 "Spontaneous correction" 1 "Correction after explanation" 8 "Unknown" 0 "Failure"
label values ima01 _BHNHlLJTWt

label variable ima01_rnd "Gesture 1 reason unknown"
label define _nz2VEXW6s5 5 "5=Could not do due to physical problems" 9 "9=Did not do due to technical problems" 7 "7=Cound not do due to both physical and mental problems" 6 "6=Could not do due to mental problems" 8 "8=Refused but theoretically could do"
label values ima01_rnd _nz2VEXW6s5

label variable ima02 "Gesture 2"
label define _iO9oHY82Dw 3 "Immediate success" 2 "Spontaneous correction" 1 "Correction after explanation" 0 "Failure" 8 "Unknown"
label values ima02 _iO9oHY82Dw

label variable ima02_rnd "Gesture 2 reason unknown"
label define _p4rvc2E0df 5 "5=Could not do due to physical problems" 9 "9=Did not do due to technical problems" 6 "6=Could not do due to mental problems" 7 "7=Cound not do due to both physical and mental problems" 8 "8=Refused but theoretically could do"
label values ima02_rnd _p4rvc2E0df

label variable ima03 "Gesture 3"
label define _P7doQBluDC 3 "Immediate success" 2 "Spontaneous correction" 1 "Correction after explanation" 0 "Failure" 8 "Unknown"
label values ima03 _P7doQBluDC

label variable ima03_rnd "Gesture 3 reason unknown"
label define _U5LosgqKoa 5 "5=Could not do due to physical problems" 9 "9=Did not do due to technical problems" 6 "6=Could not do due to mental problems" 7 "7=Cound not do due to both physical and mental problems" 8 "8=Refused but theoretically could do"
label values ima03_rnd _U5LosgqKoa

label variable ima04 "Gesture 4"
label define _CuO9f9LTTN 3 "Immediate success" 2 "Spontaneous correction" 1 "Correction after explanation" 0 "Failure" 8 "Unknown"
label values ima04 _CuO9f9LTTN

label variable ima04_rnd "Gesture 4 reason unknown"
label define _a9QtYOl9Kn 5 "5=Could not do due to physical problems" 9 "9=Did not do due to technical problems" 6 "6=Could not do due to mental problems" 7 "7=Cound not do due to both physical and mental problems" 8 "8=Refused but theoretically could do"
label values ima04_rnd _a9QtYOl9Kn

label variable ima05 "Gesture 5"
label define _jj9JzVN5oG 3 "Immediate success" 2 "Spontaneous correction" 1 "Correction after explanation" 0 "Failure" 8 "Unknown"
label values ima05 _jj9JzVN5oG

label variable ima05_rnd "Gesture 5 reason unknown"
label define _RRKcmQf68f 5 "5=Could not do due to physical problems" 9 "9=Did not do due to technical problems" 6 "6=Could not do due to mental problems" 7 "7=Cound not do due to both physical and mental problems" 8 "8=Refused but theoretically could do"
label values ima05_rnd _RRKcmQf68f

label variable ima06 "Gesture6"
label define _JGupI7cvUW 3 "Immediate success" 2 "Spontaneous correction" 1 "Correction after explanation" 0 "Failure" 8 "Unknown"
label values ima06 _JGupI7cvUW

label variable ima06_rnd "Gesture 6 reason unknown"
label define _BU4ztdSEe0 5 "5=Could not do due to physical problems" 9 "9=Did not do due to technical problems" 6 "6=Could not do due to mental problems" 7 "7=Cound not do due to both physical and mental problems" 8 "8=Refused but theoretically could do"
label values ima06_rnd _BU4ztdSEe0

label variable ima07 "Gesture 7"
label define _hUvioUiTnv 3 "Immediate success" 2 "Spontaneous correction" 1 "Correction after explanation" 0 "Failure" 8 "Unknown"
label values ima07 _hUvioUiTnv

label variable ima07_rnd "Gesture 7 reason unknown"
label define _C5qcEiNnLy 5 "5=Could not do due to physical problems" 9 "9=Did not do due to technical problems" 6 "6=Could not do due to mental problems" 7 "7=Cound not do due to both physical and mental problems" 8 "8=Refused but theoretically could do"
label values ima07_rnd _C5qcEiNnLy

label variable imalmt "Left arm muscle tone"
label define _tQd0RxjweJ 1 "Normal" 2 "Spastic" 8 "Unknown" 3 "Lead pipe" 4 "Cogwheeling"
label values imalmt _tQd0RxjweJ

label variable imalmtuk "Left arm muscle tone unknown"
label define _cFjQmCmcB0 5 "5=Could not do due to physical problems" 9 "9=Did not do due to technical problems" 6 "6=Could not do due to mental problems" 7 "7=Cound not do due to both physical and mental problems" 8 "8=Refused but theoretically could do"
label values imalmtuk _cFjQmCmcB0

label variable imarmt "Right arm muscle tone"
label define _SGntpD3kRC 1 "Normal" 8 "Unknown" 2 "Spastic" 3 "Lead pipe" 4 "Cogwheeling"
label values imarmt _SGntpD3kRC

label variable imarmtuk "Right arm muscle tone unknown"
label define _cyRcwQbMpk 9 "9=Did not do due to technical problems" 5 "5=Could not do due to physical problems" 6 "6=Could not do due to mental problems" 7 "7=Cound not do due to both physical and mental problems" 8 "8=Refused but theoretically could do"
label values imarmtuk _cyRcwQbMpk

label variable imartl1 "Tremor on the left hand at rest without counting"
label define _ZHGXTY5Vy6 0 "No" 1 "Yes"
label values imartl1 _ZHGXTY5Vy6

label variable imartl2 "Tremor on the left hand at rest with counting"
label define _jIhy9sONnp 0 "No" 1 "Yes"
label values imartl2 _jIhy9sONnp

label variable imartl3 "Tremor on the left hand unknown"
label define _lNswJEGWUt 8 "Unknown"
label values imartl3 _lNswJEGWUt

label variable imartl4 "Tremor on the left hand reason unknown"
label define _KiBPbtGB2X 7 "7=Cound not do due to both physical and mental problems" 9 "9=Did not do due to technical problems" 5 "5=Could not do due to physical problems" 6 "6=Could not do due to mental problems" 8 "8=Refused but theoretically could do"
label values imartl4 _KiBPbtGB2X

label variable imartr1 "Tremor on the right hand at rest without counting"
label define _huVmUxDt07 0 "No" 1 "Yes"
label values imartr1 _huVmUxDt07

label variable imartr2 "Tremor on the right hand at rest with counting"
label define _tTtOpay9Xv 0 "No" 1 "Yes"
label values imartr2 _tTtOpay9Xv

label variable imartr3 "Tremor on the right hand unknown"
label define _qAdafduH0k 8 "Unknown"
label values imartr3 _qAdafduH0k

label variable imartr4 "Tremor on the right hand reason unknown"
label define _iJa2Fxnk18 9 "9=Did not do due to technical problems" 5 "5=Could not do due to physical problems" 7 "7=Cound not do due to both physical and mental problems" 6 "6=Could not do due to mental problems" 8 "8=Refused but theoretically could do"
label values imartr4 _iJa2Fxnk18

label variable imafml1 "Left finger motion"
label define _o8ENdLPfxP 1 "Normal" 0 "Abnormal" 8 "Unknown"
label values imafml1 _o8ENdLPfxP

label variable imafmluk "Left finger motion reason unknown"
label define _iAhsFeT1Ot 5 "5=Could not do due to physical problems" 9 "9=Did not do due to technical problems" 6 "6=Could not do due to mental problems" 7 "7=Cound not do due to both physical and mental problems" 8 "8=Refused but theoretically could do"
label values imafmluk _iAhsFeT1Ot

label variable imafmr1 "Right finger motion"
label define _QoVrZ0Kgm8 1 "Normal" 0 "Abnormal" 8 "Unknown"
label values imafmr1 _QoVrZ0Kgm8

label variable imafmruk "Right finger motion reason unknown"
label define _YhWLa7WsaU 5 "5=Could not do due to physical problems" 9 "9=Did not do due to technical problems" 6 "6=Could not do due to mental problems" 7 "7=Cound not do due to both physical and mental problems" 8 "8=Refused but theoretically could do"
label values imafmruk _YhWLa7WsaU

label variable imaacl1 "Left ankle motion"
label define _nhcYhDz5sG 3 "No provoked movement" 1 "Rhythmical continuous muscle contractions" 2 "Rapidly Exhaustible movement" 8 "Unknown"
label values imaacl1 _nhcYhDz5sG

label variable imaacl1uk "Left ankle motion reason unknown"
label define _r9LERILlTq 5 "5=Could not do due to physical problems" 9 "9=Did not do due to technical problems" 6 "6=Could not do due to mental problems" 7 "7=Cound not do due to both physical and mental problems" 8 "8=Refused but theoretically could do"
label values imaacl1uk _r9LERILlTq

label variable imaacr1 "Right ankle motion"
label define _ISmPQMOwop 3 "No provoked movement" 1 "Rhythmical continuous muscle contractions" 2 "Rapidly Exhaustible movement" 8 "Unknown"
label values imaacr1 _ISmPQMOwop

label variable imaacruk "Right ankle motion reason unknown"
label define _yJKbe8bcZF 5 "5=Could not do due to physical problems" 9 "9=Did not do due to technical problems" 6 "6=Could not do due to mental problems" 7 "7=Cound not do due to both physical and mental problems" 8 "8=Refused but theoretically could do"
label values imaacruk _yJKbe8bcZF

label variable imaftnl1 "Left finger to nose"
label define _a3bJ532orJ 1 "Normal" 2 "Clumsy" 8 "Unknown"
label values imaftnl1 _a3bJ532orJ

label variable imaftnl3 "Left finger to nose reason unknown"
label define _cB4wO3ddeu 5 "5=Could not do due to physical problems" 9 "9=Did not do due to technical problems" 6 "6=Could not do due to mental problems" 7 "7=Cound not do due to both physical and mental problems" 8 "8=Refused but theoretically could do"
label values imaftnl3 _cB4wO3ddeu

label variable imaftnl2 "Left finger to nose if clumsy"
label define _ehmOvTpFkn 2 "Dysmetria" 3 "Both action tremor and dysmetria" 1 "Action tremor"
label values imaftnl2 _ehmOvTpFkn

label variable imaftnr1 "Right finger to nose"
label define _IpnLap0zTy 1 "Normal" 2 "Clumsy" 8 "Unknown"
label values imaftnr1 _IpnLap0zTy

label variable imaftnr3 "Right finger to nose reason unknown"
label define _D0yK1AEoOd 5 "5=Could not do due to physical problems" 9 "9=Did not do due to technical problems" 6 "6=Could not do due to mental problems" 7 "7=Cound not do due to both physical and mental problems" 8 "8=Refused but theoretically could do"
label values imaftnr3 _D0yK1AEoOd

label variable imaftnr2 "Right finger to nose if clumsy"
label define _HxcZevZQtr 2 "Dysmetria" 3 "Both action tremor and dysmetria" 1 "Action tremor"
label values imaftnr2 _HxcZevZQtr

label variable auto_id_ideapr "Unique Teleform Number"

label variable testerid_ideapr "Tester ID"

