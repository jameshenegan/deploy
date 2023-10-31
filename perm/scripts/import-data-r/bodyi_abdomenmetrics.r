#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/bodyi_abdomenmetrics.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$spleen_area)="Spleen Area"
label(data$spleen_mean_intensity)="Spleen Mean Intensity"
label(data$spleen_std_intensity)="Spleen Standard Deviation Intensity"
label(data$right_kidney_area)="Right Kidney Area"
label(data$right_kidney_mean_intensity)="Right Kidney Mean Intensity"
label(data$right_kidney_std_intensity)="Right Kidney Standard Deviation Intensity"
label(data$left_kidney_area)="Left Kidney Area"
label(data$left_kidney_mean_intensity)="Left Kidney Mean Intensity"
label(data$left_kidney_std_intensity)="Left Kidney Standard Deviation Intensity"
label(data$gallbladder_area)="Gallbladder Area"
label(data$gallbladder_mean_intensity)="Gallbladder Mean Intensity"
label(data$gallbladder_std_intensity)="Gallbladder Standard Deviation Intensity"
label(data$liver_area)="Liver Area"
label(data$liver_mean_intensity)="Liver Mean Intensity"
label(data$liver_std_intensity)="Liver Standard Deviation Intensity"
label(data$stomache_area)="Stomach Area"
label(data$stomache_mean_intensity)="Stomach Mean Intensity"
label(data$stomache_std_intensity)="Stomach Standard Deviation Intensity"
label(data$aorta_area)="Aorta Area"
label(data$aorta_mean_intensity)="Aorta Mean Intensity"
label(data$aorta_std_intensity)="Aorta Standard Deviation Intensity"
label(data$pancrease_area)="Pancreas Area"
label(data$pancrease_mean_intensity)="Pancreas Mean Intensity"
label(data$pancrease_std_intensity)="Pancreas Standard Deviation Intensity"
label(data$muscle_area)="Muscle Area"
label(data$muscle_mean_intensity)="Muscle Mean Intensity"
label(data$muscle_std_intensity)="Muscle Standard Deviation Intensity"
label(data$inner_abdominal_wall_area)="Inner Abdominal Wall Area"
label(data$inner_abd_wall_mean_intensity)="Inner Abdominal Wall Mean Intensity"
label(data$inner_abd_wall_std_intensity)="Inner Abdominal Wall Standard Deviation Intensity"
label(data$outer_abdominal_wall_area)="Outer Abdominal Wall Area"
label(data$outer_abd_wall_mean_intensity)="Outer Abdominal Wall Mean Intensity"
label(data$outer_abd_wall_std_intensity)="Outer Abdominal Wall Standard Deviation Intensity"
label(data$subcutaneous_fat_area)="Subcutaneous Fat Area"
label(data$subcutaneous_fat_mean_intensity)="Subcutaneous Fat Mean Intensity"
label(data$subcutaneous_fat_std_intensity)="Subcutaneous Fat Standard Deviation Intensity"
label(data$visceral_fat_area)="Visceral Fat Area"
label(data$visceral_fat_mean_intensity)="Visceral Fat Mean Intensity"
label(data$visceral_fat_std_intensity)="Visceral Fat Standard Deviation Intensity"
label(data$retroperitoneum_fat_area)="Retroperitoneum Fat Area"
label(data$retroperit_fat_mean_intensity)="Retroperitoneum Fat Mean Intensity"
label(data$retroperit_fat_std_intensity)="Retroperitoneum Fat Standard Deviation Intensity"
label(data$body_mask_area)="Body Mask Area"
label(data$body_mask_mean_intensity)="Body Mask Mean Intensity"
label(data$body_mask_std_intensity)="Body Mask Standard Deviation Intensity"
