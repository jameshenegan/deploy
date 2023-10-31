clear
import delimited "../data-csv/oc_ctreaderchecklistrev.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable crf_version_ctreacherev "CRF Version"

label variable ctred01 "CD received"
label define _SbepxVOWhS 1 "Yes" 0 "No"
label values ctred01 _SbepxVOWhS

label variable ctred02 "Are there duplicate images"
label define _gCCAe7TbsU 1 "Yes" 0 "No"
label values ctred02 _gCCAe7TbsU

label variable ctred02a "L1-L2 how many"

label variable ctred02b "L4-L5 how many"

label variable ctred02c "Thigh how many"

label variable ctred02d "Upper tibia how many"

label variable ctred02e "Lower tibia how many"

label variable ctred02f "Foot how many"

label variable ctred02g "Scout Film Torso how many"

label variable ctred02h "Scout Film - Legs how many"

label variable ctred03a "Image Missing"

label variable ctred03b "Hardware"

label variable ctred03c "Malalignment"

label variable ctred03d "Artifact"

label variable auto_id_ctreacherev "Unique Teleform Number"

label variable ctred03a_1 "Image Missing : L1-L2 (Checkbox Indicator)"

label variable ctred03a_2 "Image Missing : L4-L5 (Checkbox Indicator)"

label variable ctred03a_3 "Image Missing : Thigh (Checkbox Indicator)"

label variable ctred03a_4 "Image Missing : Upper Tibia (Checkbox Indicator)"

label variable ctred03a_5 "Image Missing : Lower Tibia (Checkbox Indicator)"

label variable ctred03a_6 "Image Missing : Foot (Checkbox Indicator)"

label variable ctred03b_1 "Hardware : L1-L2 (Checkbox Indicator)"

label variable ctred03b_2 "Hardware : L4-L5 (Checkbox Indicator)"

label variable ctred03b_3 "Hardware : Thigh (Checkbox Indicator)"

label variable ctred03b_4 "Hardware : Upper Tibia (Checkbox Indicator)"

label variable ctred03b_5 "Hardware : Lower Tibia (Checkbox Indicator)"

label variable ctred03b_6 "Hardware : Foot (Checkbox Indicator)"

label variable ctred03c_1 "Malalignment : L1-L2 (Checkbox Indicator)"

label variable ctred03c_2 "Malalignment : L4-L5 (Checkbox Indicator)"

label variable ctred03c_3 "Malalignment : Thigh (Checkbox Indicator)"

label variable ctred03c_4 "Malalignment : Upper Tibia (Checkbox Indicator)"

label variable ctred03c_5 "Malalignment : Lower Tibia (Checkbox Indicator)"

label variable ctred03c_6 "Malalignment : Foot (Checkbox Indicator)"

label variable ctred03d_1 "Artifact : L1-L2 (Checkbox Indicator)"

label variable ctred03d_2 "Artifact : L4-L5 (Checkbox Indicator)"

label variable ctred03d_3 "Artifact : Thigh (Checkbox Indicator)"

label variable ctred03d_4 "Artifact : Upper Tibia (Checkbox Indicator)"

label variable ctred03d_5 "Artifact : Lower Tibia (Checkbox Indicator)"

label variable ctred03d_6 "Artifact : Foot (Checkbox Indicator)"

label variable testerid_ctreacherev "Tester ID"

