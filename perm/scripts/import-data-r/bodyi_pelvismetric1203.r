#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/bodyi_pelvismetric1203.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$bone_area)="Bone Area"
label(data$bone_mean_intensity)="Bone Mean Intensity"
label(data$bone_std_intensity)="Bone Standard Deviation Intensity"
label(data$skeletal_muscle_area)="Skeletal Muscle Area"
label(data$skeletal_muscle_mean_intensity)="Skeletal Muscle Mean Intensity"
label(data$skeletal_muscle_std_intensity)="Skeletal Muscle Standard Deviation Intensity"
label(data$psoas_muscle_area)="Psoas Muscle Area"
label(data$psoas_muscle_mean_intensity)="Psoas Muscle Mean Intensity"
label(data$psoas_muscle_std_intensity)="Psoas Muscle Standard Deviation Intensity"
label(data$inner_abdominal_wall_area)="Inner Abdominal Wall Area (Pelvis)"
label(data$inner_abd_wall_mean_intensity)="Inner Abdominal Wall Mean Intensity (Pelvis)"
label(data$inner_abd_wall_std_intensity)="Inner Abdominal Wall Standard Deviation Intensity (Pelvis)"
label(data$outer_abdominal_wall_area)="Outer Abdominal Wall Area (Pelvis)"
label(data$outer_abd_wall_mean_intensity)="Outer Abdominal Wall Mean Intensity (Pelvis)"
label(data$outer_abd_wall_std_intensity)="Outer Abdominal Wall Standard Deviation Intensity (Pelvis)"
label(data$subcutaneous_fat_area)="Subcutaneous Fat Area (Pelvis)"
label(data$subcutaneous_fat_mean_intensity)="Subcutaneous Fat Mean Intensity (Pelvis)"
label(data$subcutaneous_fat_std_intensity)="Subcutaneous Fat Standard Deviation Intensity (Pelvis)"
label(data$visceral_fat_area)="Visceral Fat Area (Pelvis)"
label(data$visceral_fat_mean_intensity)="Visceral Fat Mean Intensity (Pelvis)"
label(data$visceral_fat_std_intensity)="Visceral Fat Standard Deviation Intensity (Pelvis)"
label(data$body_mask_area)="Body Mask Area (Pelvis)"
label(data$body_mask_mean_intensity)="Body Mask Mean Intensity (Pelvis)"
label(data$body_mask_std_intensity)="Body Mask Standard Deviation Intensity (Pelvis)"
