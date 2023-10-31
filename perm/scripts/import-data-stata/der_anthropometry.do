clear
import delimited "../data-csv/der_anthropometry.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "BLSA Visit Number"

label variable weight "Weight (kg)"

label variable weightloss "Weight Loss Since Previous Visit (kg)"

label variable intweightloss "Intentional Weight Loss Since Previous Visit (kg)"
label define _PFX3Bt6SG0y2 1 "Intentional Weight Loss" 0 "Unintentional Weight Loss"
label values intweightloss _PFX3Bt6SG0y2

label variable height "Height (cm)"

label variable bsa "Body Surface Area using Du Bois formula (m^2)"

label variable bmi "Body Mass Index (kg/m^2)"

label variable obesity4cat "CDC Obesity Classification (4-category)"
label define _wT7G1AJ11DS4 3 "Overweight: 25 ≤ BMI < 30 kg/m^2" 2 "Normal: 18.5 ≤ BMI < 25 kg/m^2" 4 "Obese: BMI ≥ 30 kg/m^2" 1 "Underweight: BMI < 18.5 kg/m^2"
label values obesity4cat _wT7G1AJ11DS4

label variable obesity6cat "CDC Obesity Classification (6-category)"
label define _I9Ti7Icb4X6e 3 "Overweight: 25 less than or equal to BMI < 30 kg/m^2" 2 "Normal: 18.5 less than or equal to BMI < 25 kg/m^2" 4 "Class 1 Obesity: 30 less than or equal to BMI < 35 kg/m^2" 5 "Class 2 Obesity: 35 less than or equal to BMI < 40 kg/m^2" 6 "Class 3 Obesity: BMI ≥ 40 kg/m^2" 1 "Underweight: BMI < 18.5 kg/m^2"
label values obesity6cat _I9Ti7Icb4X6e

label variable waistcirc "Upper Waist Circumference (cm)"

label variable lowerwaistcirc "Lower Waist Circumference (cm)"

label variable waistdiam "Waist Diameter (cm)"

label variable waistdepth "Waist Depth (cm)"

label variable bodytemp "Oral Body Temperature (Fahrenheit)"

label variable hipcirc "Hip (buttocks) Circumference (cm)"

label variable tibialength "Right Tibia Length (cm)"

label variable bicepskinfold "Right Bicep Skinfold Thickness (cm)"

label variable respirations "Respirations (breaths/min)"

label variable pulse "Pulse (beats/min)"

label variable waisthip "Waist-to-Hip Ratio"

label variable waistheight "Waist-to-Height Ratio"

