clear
import delimited "../data-csv/oc_bodymeasurements.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_bodmea "CRF Version"

label variable anttid1 "Tester ID 1"

label variable ant01 "Body Temperature (F)"

label variable ant02 "Pulse"

label variable ant03 "Respirations"

label variable ant05 "Weight"

label variable ant06a "Height measurement 1"

label variable ant06b "Height measurement 2"

label variable arm1 "R arm skinfold thickness mm 1"

label variable ant12a "Right arm skinfold thickness measurement 1"

label variable arm2 "R arm skinfold thickness mm 2"

label variable ant12b "Right arm skinfold thickness measurement 2"

label variable arm3 "R arm skinfold thickness mm 3"

label variable ant12c "Right arm skinfold thickness measurement 3"

label variable ant05a2 "Weight not measured"
label define _VTKuNTKdRX 555 "Physical problems" 666 "Mental problems" 777 "Both Physical and Mental problems" 888 "Refused but theoretically could do" 999 "Technical problems"
label values ant05a2 _VTKuNTKdRX

label variable ant06a2 "Height not measured"
label define _V3AsZ2p5MK 555 "Physical problems" 666 "Mental problems" 777 "Both Physical and Mental problems" 888 "Refused but theoretically could do" 999 "Technical problems"
label values ant06a2 _V3AsZ2p5MK

label variable hvbp_rl "Blood Pressure R or L"
label define _EaC59MLe32 1 "Rignt" 2 "Left"
label values hvbp_rl _EaC59MLe32

label variable hvsystolic "Blood Pressure Systolic"

label variable hvdiastolic "Blood Pressure Diastolic"

label variable hv_bp_rnd "Blood Pressure Reason not done"

label variable ant04a "Blood Pressure Systolic"

label variable ant04b "Blood Pressure Diastolic"

label variable ant06c "Height measurement 3"

label variable anttid3 "Tester ID 3"

label variable ant13 "Tibia Length"

label variable anttid2 "Tester ID 2"

label variable ant07a "Waist diameter measurement 1"

label variable ant07b "Waist diameter measurement 2"

label variable ant07c "Waist diameter measurement 3"

label variable ant08a "Waist depth measurement 1"

label variable ant08b "Waist depth measurement 2"

label variable ant08c "Waist depth measurement 3"

label variable ant09a "Upper abdomen circumference measurement 1"

label variable ant09b "Upper abdomen circumference measurement 2"

label variable ant09c "Upper abdomen circumference measurement 3"

label variable ant10a "Lower abdomen circumference measurement 1"

label variable ant10b "Lower abdomen circumference measurement 2"

label variable ant10c "Lower abdomen circumference measurement 3"

label variable ant11a "Buttock circumference measurement 1"

label variable ant11b "Buttock circumference measurement 2"

label variable ant11c "Buttock circumference measurement 3"

label variable ant14a "Head circumference measurement 1 before Dexa"

label variable ant14b "Head circumference measurement 2 before Dexa"

label variable ant14c "Head circumference measurement 3 after Dexa"

label variable ant05a "Weight not measured"
label define _JNkJgZihXH 555 "555" 777 "777" 0 "Not Measured" 888 "888" 666 "666" 999 "999"
label values ant05a _JNkJgZihXH

label variable ant06a1 "Height not measured"
label define _AAiwJh7dgr 555 "555" 777 "777" 999 "999" 888 "888" 0 "Not Measured" 666 "666"
label values ant06a1 _AAiwJh7dgr

label variable ant06a1_2 "Upper abdomen not measured"
label define _WC6PMLuyI4 555 "555" 0 "Not Measured" 888 "888" 666 "666" 777 "777" 999 "999"
label values ant06a1_2 _WC6PMLuyI4

label variable ant06a1_3 "Lower abdomen not measured"
label define _lRFzJVcXR5 555 "555" 0 "Not Measured" 888 "888" 666 "666" 777 "777" 999 "999"
label values ant06a1_3 _lRFzJVcXR5

label variable auto_id_bodmea "Unique Teleform Number"

