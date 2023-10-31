clear
import delimited "../data-csv/der_physicalperformance.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "BLSA Visit Number"

label variable r6mtime "6 meter walk time (sec)"

label variable rapidgaitspeed "Rapid gait speed (m/s)"

label variable gaitspeed "Usual gait speed (m/s)"

label variable sppb_gs "SPPB - gait speed score"

label variable sppb_cs "SPPB - chair stand score"

label variable sppb_sb "SPPB - standing balance score"

label variable sppb "SPPB - score"

label variable gs_ratio "Expanded SPPB - Gait Speed Ratio"

label variable cs5pace "SPPB - 5 chair stand speed"

label variable cs10pace "SPPB - 10 chair stand speed"

label variable cs_ratio "Expanded SPPB - Chair Stand Ratio"

label variable nwalk "Successfully completed narrow walk"
label define _NcCQenio3K 1 "Yes" 0 "No"
label values nwalk _NcCQenio3K

label variable nwalktime "Narrow walk time in seconds"

label variable nwspeed "Narrow walk speed (m/s)"

label variable nw_ratio "Expanded SPPB - Narrow Walk Ratio"

label variable ststime "Semi-tandem stand time in seconds"

label variable ftstime "Full-tandem time in seconds"

label variable slstime "Single leg stand time in seconds"

label variable totsbtime "Total standing balance time (seconds)"

label variable sb_ratio "Expanded SPPB - Standing Balance Ratio"

label variable habcppb "Expanded SPPB - score"

