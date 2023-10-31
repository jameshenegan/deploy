clear
import delimited "../data-csv/der_labs.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "BLSA Visit Number"

label variable ldl "LDL Cholesterol (mg/dL)"

label variable ldl5cat "ATP III Fasting LDL Categorization"
label define _TG0cK6Y6LJ80 1 "Optimal: LDL < 100 mg/dL" 2 "Near/Above Optimal: 100 less than or equal to LDL < 130 mg/dL" 3 "Borderline High: 130 less than or equal to LDL < 160 mg/dL" 4 "High: 160 less than or equal to LDL < 190 mg/dL" 5 "Very High: LDL ≥ 190 mg/dL"
label values ldl5cat _TG0cK6Y6LJ80

label variable hdl "HDL Cholesterol (mg/dL)"

label variable hdl3cat "ATP III Fasting HDL Categorization"
label define _Cvv52xCOTFm1 3 "High: HDL ≥ 60 mg/dL" 2 "Normal: 40 less than or equal to HDL < 60 (males); 50 less than or equal to HDL < 60 mg/dL (females)" 1 "Low: HDL < 40 (males); HDL < 50 mg/dL (females)"
label values hdl3cat _Cvv52xCOTFm1

label variable trigs "Triglycerides (mg/dL)"

label variable trigs4cat "ATP III Fasting Triglyceride Categorization"
label define _dpiot716AO8u 1 "Normal: Trigs < 150 mg/dL" 2 "Borderline High: 150 <= Trigs < 200 mg/dL" 3 "High: 200 <= Trigs < 500 mg/dL" 4 "Very High: Trigs >= 500 mg/dL"
label values trigs4cat _dpiot716AO8u

label variable hgb "Hemoglobin (g/dL)"

label variable anemia "Anemia Classification"
label define _wdVaAsUTEb 0 "Normal Hgb: Hgb greater than or equal to 40 (males); Hgb greater than or equal to 12 g/dL (females)" 1 "Anemia: Hgb < 13 (males); Hgb < 12 g/dL (females)"
label values anemia _wdVaAsUTEb

