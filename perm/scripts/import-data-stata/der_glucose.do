clear
import delimited "../data-csv/der_glucose.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "BLSA Visit Number"

label variable gluload "Sugar concentration for OGTT (grams)"

label variable sample_dilution "Diluation factor"

label variable glucose0_1964 "Fasting Glucose 1964-1977 (mg/dl)"

label variable glucose5_1964 "OGTT Glucose at 5-mins 1964-1977 (mg/dl)"

label variable glucose10_1964 "OGTT Glucose at 10-mins 1964-1977 (mg/dl)"

label variable glucose15_1964 "OGTT Glucose at 15-mins 1964-1977 (mg/dl)"

label variable glucose20_1964 "OGTT Glucose at 20-mins 1964-1977 (mg/dl)"

label variable glucose40_1964 "OGTT Glucose at 40-mins 1964-1977 (mg/dl)"

label variable glucose60_1964 "OGTT Glucose at 60-mins 1964-1977 (mg/dl)"

label variable glucose80_1964 "OGTT Glucose at 80-mins 1964-1977 (mg/dl)"

label variable glucose100_1964 "OGTT Glucose at 100-mins 1964-1977 (mg/dl)"

label variable glucose120_1964 "OGTT Glucose at 120-mins 1964-1977 (mg/dl)"

label variable glucose0_1977 "Fasting Glucose 1977-2000 (mg/dl)"

label variable glucose5_1977 "OGTT Glucose at 5-mins 1977-2000 (mg/dl)"

label variable glucose10_1977 "OGTT Glucose at 10-mins 1977-2000 (mg/dl)"

label variable glucose15_1977 "OGTT Glucose at 15-mins 1977-2000 (mg/dl)"

label variable glucose20_1977 "OGTT Glucose at 20-mins 1977-2000 (mg/dl)"

label variable glucose40_1977 "OGTT Glucose at 40-mins 1977-2000 (mg/dl)"

label variable glucose60_1977 "OGTT Glucose at 60-mins 1977-2000 (mg/dl)"

label variable glucose80_1977 "OGTT Glucose at 80-mins 1977-2000 (mg/dl)"

label variable glucose100_1977 "OGTT Glucose at 100-mins 1977-2000 (mg/dl)"

label variable glucose120_1977 "OGTT Glucose at 120-mins 1977-2000 (mg/dl)"

label variable glucose0_2001 "Fasting Glucose 2001-current (mg/dl)"

label variable glucose5_2001 "OGTT Glucose at 5-mins 2001-current (mg/dl)"

label variable glucose10_2001 "OGTT Glucose at 10-mins 2001-current (mg/dl)"

label variable glucose15_2001 "OGTT Glucose at 15-mins 2001-current (mg/dl)"

label variable glucose20_2001 "OGTT Glucose at 20-mins 2001-current (mg/dl)"

label variable glucose40_2001 "OGTT Glucose at 40-mins 2001-current (mg/dl)"

label variable glucose60_2001 "OGTT Glucose at 60-mins 2001-current (mg/dl)"

label variable glucose80_2001 "OGTT Glucose at 80-mins 2001-current (mg/dl)"

label variable glucose100_2001 "OGTT Glucose at 100-mins 2001-current (mg/dl)"

label variable glucose120_2001 "OGTT Glucose at 120-mins 2001-current (mg/dl)"

label variable glucose0 "Fasting Glucose calibrated (mg/dl)"

label variable glucose0_3cat "OGTT Glucose Categorization at 0-mins, calibrated (Norm, At Risk, Diab)"
label define _xhP425hF8SA2 0 "Normal Glucose Tolerance" 1 "Pre-Diabetes" 2 "Type 2 Diabetes"
label values glucose0_3cat _xhP425hF8SA2

label variable glucose20 "OGTT Glucose at 20-mins calibrated (mg/dl)"

label variable glucose40 "OGTT Glucose at 40-mins calibrated (mg/dl)"

label variable glucose60 "OGTT Glucose at 60-mins calibrated (mg/dl)"

label variable glucose80 "OGTT Glucose at 80-mins calibrated (mg/dl)"

label variable glucose100 "OGTT Glucose at 100-mins calibrated (mg/dl)"

label variable glucose120 "OGTT Glucose at 120-mins calibrated (mg/dl)"

label variable glucose120_3cat "OGTT Glucose Categorization at 120-mins, calibrated (Norm, At Risk, Diab)"
label define _RLsOvNpL0GZ2 0 "Normal Glucose Tolerance" 1 "Pre-Diabetes" 2 "Type 2 Diabetes"
label values glucose120_3cat _RLsOvNpL0GZ2

label variable insulin0 "OGTT Insulin at 0-mins (µU/ml)"

label variable insulin5 "OGTT Insulin at 5-mins (µU/ml)"

label variable insulin10 "OGTT Insulin at 10-mins (µU/ml)"

label variable insulin15 "OGTT Insulin at 15-mins (µU/ml)"

label variable insulin20 "OGTT Insulin at 20-mins (µU/ml)"

label variable insulin40 "OGTT Insulin at 40-mins (µU/ml)"

label variable insulin60 "OGTT Insulin at 60-mins (µU/ml)"

label variable insulin80 "OGTT Insulin at 80-mins (µU/ml)"

label variable insulin100 "OGTT Insulin at 100-mins (µU/ml)"

label variable insulin120 "OGTT Insulin at 120-mins (µU/ml)"

label variable hba1c "Plasma Hemoglobin HbA1c (%)"

label variable hba1c3cat "Plasma Hemoglobin HbA1c (%) Categorization (Norm, At Risk, Diab)"
label define _gw019HqluSlM 1 "Pre-Diabetes" 0 "Normal Glucose Tolerance" 2 "Type 2 Diabetes"
label values hba1c3cat _gw019HqluSlM

label variable glucose3cat "Diabetes Categorization (Norm, At Risk, Diab)"
label define _F36eU77bnBpY 0 "Normal Glucose Tolerance" 1 "Pre-Diabetes" 2 "Type 2 Diabetes"
label values glucose3cat _F36eU77bnBpY

label variable diab3cat "Diabetes Categorization (Norm, At Risk, Diab)"
label define _v5516ManUtC6 1 "Pre-Diabetes" 2 "Type 2 Diabetes" 0 "Normal Glucose Tolerance"
label values diab3cat _v5516ManUtC6

