#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/inst_proprioception.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$position_01)="Ankle Position 01"
label(data$position_02)="Ankle Position 02"
label(data$position_03)="Ankle Position 03"
label(data$relex_maxt)="Ankle Relex MaxT"
label(data$relex_meant)="Ankle Relex MeanT"
label(data$thr1_yn)="Ankle Thr1 YN"
label(data$thr2_yn)="Ankle Thr2 YN"
label(data$thr3_yn)="Ankle Thr3 YN"
label(data$thr4_yn)="Ankle Thr4 YN"
label(data$threshold_01_pf)="Ankle Threshold 01 Plantar Flexion"
label(data$threshold_02_df)="Ankle Threshold 02 Dorsiflexion"
label(data$threshold_03_df)="Ankle Threshold 03 Dorsiflexion"
label(data$threshold_04_pf)="Ankle Threshold 04 Plantar Flexion"
label(data$track01_max_diff_minus)="Ankle track01 max diff plus"
label(data$track01_max_diff_plus)="Ankle track01 max diff plus"
label(data$track01_mean_diff)="Ankle track01 mean diff"
label(data$track02_max_diff_minus)="Ankle track02 max diff minus"
label(data$track02_max_diff_plus)="Ankle track02 max diff plus"
label(data$track02_mean_diff)="Ankle track02 max diff minus"
label(data$tracking_01)="Ankle track02 max diff minus"
label(data$tracking_02)="Ankle Tracking 02"
