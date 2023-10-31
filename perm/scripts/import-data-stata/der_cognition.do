clear
import delimited "../data-csv/der_cognition.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "BLSA Visit Number"

label variable cogn_status "4-level Cognitive Status at visit"
label define _ah8lPCCVQC 0 "Normal" 1 "MCI" 2 "Dementia" 3 "Impaired Not-MCI/Dem"
label values cogn_status _ah8lPCCVQC

label variable last_cogn_status "4-level Cognitive Status at last case conference"
label define _fr5D23xBS4 0 "Normal" 2 "Dementia" 1 "MCI" 3 "Impaired Not-MCI/Dem"
label values last_cogn_status _fr5D23xBS4

label variable last_cogn_status_dementia "Dementia diagnosis indicator at last case conference"
label define _FUM68VHjIc 0 "Non-Dementia" 1 "Dementia"
label values last_cogn_status_dementia _FUM68VHjIc

label variable last_cogn_status_alzdis "Alzheimers Disease (AD) diagnosis at last case conference"
label define _UCqdynv4Kb 0 "non-AD" 1 "Dementia due to Alzheimers"
label values last_cogn_status_alzdis _UCqdynv4Kb

label variable last_cogn_status_type1 "19-Level Primary DX Category at last case conference"
label define _B31wVF16B3 0 "Normal" 2 "Probable AD" 4 "Vascular dementia" 3 "Possible AD" 9 "Unspecified" 5 "Consistent w/ AD" 8 "PD" 14 "Dementia w/ lewy body" 6 "Depression" 17 "Vascular without dementia" 10 "Other primary DX" 18 "Other Dementia" 15 "Frontotemporal dementia" 7 "Alcohol abuse" 1 "Definite AD" 11 "Other secondary DX" 12 "Normal pressure hydrocephalus" 13 "Hippocampal sclerosis" 19 "Unknown"
label values last_cogn_status_type1 _B31wVF16B3

label variable last_cogn_status_type2 "19-Level Secondary DX Category at last case conference"
label define _s9uOFThDFS 0 "Normal" 1 "Definite AD" 2 "Probable AD" 3 "Possible AD" 4 "Vascular dementia" 5 "Consistent w/ AD" 6 "Depression" 7 "Alcohol abuse" 8 "PD" 9 "Unspecified" 10 "Other primary DX" 11 "Other secondary DX" 12 "Normal pressure hydrocephalus" 13 "Hippocampal sclerosis" 14 "Dementia w/ lewy body" 15 "Frontotemporal dementia" 17 "Vascular without dementia" 18 "Other Dementia" 19 "Unknown"
label values last_cogn_status_type2 _s9uOFThDFS

label variable last_cogn_status_caseconf "Indicator of Case Conferencing for Cognitive Status Determination"
label define _bVx92UH4wK 0 "Participant has never been case-conferenced" 1 "Participant has been case-conferenced"
label values last_cogn_status_caseconf _bVx92UH4wK

