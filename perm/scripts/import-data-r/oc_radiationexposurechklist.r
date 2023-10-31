#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_radiationexposurechklist.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_radexpche)="CRF Version"
label(data$radscid)="Screener ID"
label(data$radex1a)="BLSA"
label(data$radex1b)="CT"
label(data$radex1e)="DEXA"
label(data$radex1i)="NIA Subtotal"
label(data$radex2)="radiation exposure past 12 months"
label(data$radex21)="Simple xray or PET"
label(data$radex2a)="Simple x-ray or PET total"
label(data$radex22)="X-ray with contrast"
label(data$radex2b)="X-ray with contrast total"
label(data$radex23)="CT or MUGA"
label(data$radex2c)="CT or MUGA total"
label(data$radex24)="Mamography"
label(data$radex2d)="Mamography total"
label(data$radex2e)="Other studies subtotal"
label(data$radex3)="Total"
label(data$radsc1)="Is participant female not hysterectomized and under 56y"
label(data$radsc1a)="If yes urine pregnancy results"
label(data$radex_pib)="PiB"
label(data$radex_tau)="Tau"
label(data$radex1f)="Neuroimaging"
label(data$radex1g)="VALIDATE"
label(data$auto_id_radexpche)="Unique Teleform Number"
label(data$radex1c)="Knee x-ray"
label(data$radex1d)="Hand x-ray"
label(data$radex1h)="MUGA"
label(data$radsc2)="Knee replacement surgery"
label(data$radsc2a)="Knee replacement which knee"
label(data$radtecid)="Rad Technician ID"
label(data$rad01)="Hand x-ray done"
label(data$rad01a)="Hand x-ray reason not done"
label(data$rad02)="Knee x-ray done"
label(data$rad02a)="Knee x-ray RND"
label(data$rad03)="Did hand xrays receive KL grades 0 in both sides"
label(data$rad04)="Did knee xrays receive KL grades 0 in both sides"
label(data$rad05)="Is participants age 60 or older"
label(data$rad06)="If answered NO to hip replacement surgery"
label(data$rad07)="If answered NO to back surgery or hardware"
label(data$rad08)="Were sunrise knee RX done"
label(data$rad08a)="Sunrise knee RX reason not done"
label(data$radex1a_blsa)="BLSA : BLSA 0.52 REM (Please specify) (Checkbox Indicator)"
label(data$radex1b_blsa_ct)="CT : CT 0.5155080 REM (Checkbox Indicator)"
label(data$radex1c_blsa_knee_xray)="Knee x-ray : Knee x-ray 0.0002580 REM (Checkbox Indicator)"
label(data$radex1d_blsa_hand_xray)="Hand x-ray : Hand x-ray 0.0000070 REM (Checkbox Indicator)"
label(data$radex1e_blsa_dexa)="DEXA : DEXA 0.0000012 REM (Checkbox Indicator)"
label(data$radex1f_early_markers)="Neuroimaging : Neuroimaging 0.480 REM (Checkbox Indicator)"
label(data$radex1g_validate)="VALIDATE : Validate 0.155 REM (Checkbox Indicator)"
label(data$radex1h_jhh80062503)="MUGA : MUGA 1.550 REM (Checkbox Indicator)"
label(data$radex21_rad_rx_simple)="Simple xray or PET : Any simple Xray or PET (Checkbox Indicator)"
label(data$radex22_rad_rx_contrast)="X-ray with contrast : Any Xray with contrast (Checkbox Indicator)"
label(data$radex23_rad_ct)="CT or MUGA : Any CT or MUGA (Checkbox Indicator)"
label(data$radex24_rad_mamography)="Mamography : Mamography (Checkbox Indicator)"
label(data$testerid_radexpche)="Tester ID"
label(data$radex_pib_pib)="PiB : PiB 0.303 (Checkbox Indicator)"
label(data$radex_tau_tau)="Tau : Tau 1.0 REM (Checkbox Indicator)"

#Create new variables for factors
data$radex2.factor = factor(data$radex2, levels = c("0","1"))
levels(data$radex2.factor) = c("No","Yes")

data$radsc1.factor = factor(data$radsc1, levels = c("0","1"))
levels(data$radsc1.factor) = c("No","Yes")

data$radsc1a.factor = factor(data$radsc1a, levels = c("0","1"))
levels(data$radsc1a.factor) = c("Negative","Positive")

data$radsc2.factor = factor(data$radsc2, levels = c("0","1","888","777"))
levels(data$radsc2.factor) = c("No","Yes","Dont know","Refused")

data$radsc2a.factor = factor(data$radsc2a, levels = c("2","0","1"))
levels(data$radsc2a.factor) = c("Both","Right","Left")

data$rad01.factor = factor(data$rad01, levels = c("1","3","2"))
levels(data$rad01.factor) = c("Both","Right only","Left only")

data$rad01a.factor = factor(data$rad01a, levels = c("999","888","555","666"))
levels(data$rad01a.factor) = c("Technical problems","Refused","Physical problems","Cognitive problems")

data$rad02.factor = factor(data$rad02, levels = c("1","3","2"))
levels(data$rad02.factor) = c("Both","Right only","Left only")

data$rad02a.factor = factor(data$rad02a, levels = c("999","1","888","555","666"))
levels(data$rad02a.factor) = c("Technical problems","Joint replacement","Refused","Physical problems","Cognitive problems")

data$rad03.factor = factor(data$rad03, levels = c("0","1"))
levels(data$rad03.factor) = c("No","Yes")

data$rad04.factor = factor(data$rad04, levels = c("0","1"))
levels(data$rad04.factor) = c("No","Yes")

data$rad05.factor = factor(data$rad05, levels = c("1","0"))
levels(data$rad05.factor) = c("Yes","No")

data$rad06.factor = factor(data$rad06, levels = c("0","1"))
levels(data$rad06.factor) = c("No","Yes")

data$rad07.factor = factor(data$rad07, levels = c("0","1"))
levels(data$rad07.factor) = c("No","Yes")

data$rad08.factor = factor(data$rad08, levels = c("1","3","2"))
levels(data$rad08.factor) = c("Both","Right only","Left only")

data$rad08a.factor = factor(data$rad08a, levels = c("999","0","888","555","666"))
levels(data$rad08a.factor) = c("Technical problems","Answered NO to any of the above (3-7)","Refused","Physical problems","Cognitive problems")

