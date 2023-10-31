clear
import delimited "../data-csv/bodyi_abdomenmetrics.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable spleen_area "Spleen Area"

label variable spleen_mean_intensity "Spleen Mean Intensity"

label variable spleen_std_intensity "Spleen Standard Deviation Intensity"

label variable right_kidney_area "Right Kidney Area"

label variable right_kidney_mean_intensity "Right Kidney Mean Intensity"

label variable right_kidney_std_intensity "Right Kidney Standard Deviation Intensity"

label variable left_kidney_area "Left Kidney Area"

label variable left_kidney_mean_intensity "Left Kidney Mean Intensity"

label variable left_kidney_std_intensity "Left Kidney Standard Deviation Intensity"

label variable gallbladder_area "Gallbladder Area"

label variable gallbladder_mean_intensity "Gallbladder Mean Intensity"

label variable gallbladder_std_intensity "Gallbladder Standard Deviation Intensity"

label variable liver_area "Liver Area"

label variable liver_mean_intensity "Liver Mean Intensity"

label variable liver_std_intensity "Liver Standard Deviation Intensity"

label variable stomache_area "Stomach Area"

label variable stomache_mean_intensity "Stomach Mean Intensity"

label variable stomache_std_intensity "Stomach Standard Deviation Intensity"

label variable aorta_area "Aorta Area"

label variable aorta_mean_intensity "Aorta Mean Intensity"

label variable aorta_std_intensity "Aorta Standard Deviation Intensity"

label variable pancrease_area "Pancreas Area"

label variable pancrease_mean_intensity "Pancreas Mean Intensity"

label variable pancrease_std_intensity "Pancreas Standard Deviation Intensity"

label variable muscle_area "Muscle Area"

label variable muscle_mean_intensity "Muscle Mean Intensity"

label variable muscle_std_intensity "Muscle Standard Deviation Intensity"

label variable inner_abdominal_wall_area "Inner Abdominal Wall Area"

label variable inner_abd_wall_mean_intensity "Inner Abdominal Wall Mean Intensity"

label variable inner_abd_wall_std_intensity "Inner Abdominal Wall Standard Deviation Intensity"

label variable outer_abdominal_wall_area "Outer Abdominal Wall Area"

label variable outer_abd_wall_mean_intensity "Outer Abdominal Wall Mean Intensity"

label variable outer_abd_wall_std_intensity "Outer Abdominal Wall Standard Deviation Intensity"

label variable subcutaneous_fat_area "Subcutaneous Fat Area"

label variable subcutaneous_fat_mean_intensity "Subcutaneous Fat Mean Intensity"

label variable subcutaneous_fat_std_intensity "Subcutaneous Fat Standard Deviation Intensity"

label variable visceral_fat_area "Visceral Fat Area"

label variable visceral_fat_mean_intensity "Visceral Fat Mean Intensity"

label variable visceral_fat_std_intensity "Visceral Fat Standard Deviation Intensity"

label variable retroperitoneum_fat_area "Retroperitoneum Fat Area"

label variable retroperit_fat_mean_intensity "Retroperitoneum Fat Mean Intensity"

label variable retroperit_fat_std_intensity "Retroperitoneum Fat Standard Deviation Intensity"

label variable body_mask_area "Body Mask Area"

label variable body_mask_mean_intensity "Body Mask Mean Intensity"

label variable body_mask_std_intensity "Body Mask Standard Deviation Intensity"

