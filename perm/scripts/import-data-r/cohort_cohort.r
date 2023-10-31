#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/cohort_cohort.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$visit_cancelled_status)="Visit Cancelled"
label(data$last_status_id)="Last Status ID"
label(data$last_due_letter_status)="Last Due Letter Status"
label(data$last_substatus_neuroimaging)="Last Substatus: NeuroImaging"
label(data$last_substatus_neuroimag_tau)="Last Substatus: NeuroImagingTAU"
label(data$last_substatus_home_visit)="Last Substatus: HomeVisit"
label(data$last_substatus_hv_remote)="Last Substatus: HomeVisitRemote"
label(data$last_substatus_ltfu)="Last Substatus: LostToFolowup"
label(data$last_substatus_on_study_dem)="Last Substatus: OnStudyDememtia"
label(data$last_substatus_autopsy)="Last Substatus: Autopsy"
label(data$last_substatus_not_interested)="Last Substatus: Not Interested"
label(data$last_substatus_travel_issues)="Last Substatus: Travel Issues"
label(data$last_substatus_dissatisfied)="Last Substatus: Dissatisfied"
label(data$last_substatus_health_reasons)="Last Substatus: Health Reasons"
label(data$last_substatus_refusing_tests)="Last Substatus: Refusing Tests"
label(data$last_substatus_behavior_issues)="Last Substatus: Behavioral Issues"
label(data$last_substatus_term_dementia)="Last Substatus: Terminated Dementia"

#Create new variables for factors
data$visit_cancelled_status.factor = factor(data$visit_cancelled_status, levels = c("0"))
levels(data$visit_cancelled_status.factor) = c("Not cancelled")

data$last_status_id.factor = factor(data$last_status_id, levels = c("108","7","106","107"))
levels(data$last_status_id.factor) = c("Deceased","On Study","Withdrawn","Terminated")

data$last_due_letter_status.factor = factor(data$last_due_letter_status, levels = c("108","1","105","7","101","9"))
levels(data$last_due_letter_status.factor) = c("Scheduled","Phone Call","Withdrawn","Deceased","Canceled","Letter")

data$last_substatus_neuroimaging.factor = factor(data$last_substatus_neuroimaging, levels = c("1"))
levels(data$last_substatus_neuroimaging.factor) = c("Last Substatus: NeuroImaging")

data$last_substatus_neuroimag_tau.factor = factor(data$last_substatus_neuroimag_tau, levels = c("2"))
levels(data$last_substatus_neuroimag_tau.factor) = c("Last Substatus: NeuroImagingTAU")

data$last_substatus_home_visit.factor = factor(data$last_substatus_home_visit, levels = c("3"))
levels(data$last_substatus_home_visit.factor) = c("Last Substatus: HomeVisit")

data$last_substatus_hv_remote.factor = factor(data$last_substatus_hv_remote, levels = c("4"))
levels(data$last_substatus_hv_remote.factor) = c("Last Substatus: HomeVisitRemote")

data$last_substatus_ltfu.factor = factor(data$last_substatus_ltfu, levels = c("5"))
levels(data$last_substatus_ltfu.factor) = c("Last Substatus: LostToFolowup")

data$last_substatus_on_study_dem.factor = factor(data$last_substatus_on_study_dem, levels = c("6"))
levels(data$last_substatus_on_study_dem.factor) = c("Last Substatus: OnStudyDememtia")

data$last_substatus_autopsy.factor = factor(data$last_substatus_autopsy, levels = c("7"))
levels(data$last_substatus_autopsy.factor) = c("Last Substatus: Autopsy")

data$last_substatus_not_interested.factor = factor(data$last_substatus_not_interested, levels = c("9"))
levels(data$last_substatus_not_interested.factor) = c("Last Substatus: Not Interested")

data$last_substatus_travel_issues.factor = factor(data$last_substatus_travel_issues, levels = c("10"))
levels(data$last_substatus_travel_issues.factor) = c("Last Substatus: Travel Issues")

data$last_substatus_dissatisfied.factor = factor(data$last_substatus_dissatisfied, levels = c("11"))
levels(data$last_substatus_dissatisfied.factor) = c("Last Substatus: Dissatisfied")

data$last_substatus_health_reasons.factor = factor(data$last_substatus_health_reasons, levels = c("12"))
levels(data$last_substatus_health_reasons.factor) = c("Last Substatus: Health Reasons")

data$last_substatus_refusing_tests.factor = factor(data$last_substatus_refusing_tests, levels = c("14"))
levels(data$last_substatus_refusing_tests.factor) = c("Last Substatus: Refusing Tests")

data$last_substatus_behavior_issues.factor = factor(data$last_substatus_behavior_issues, levels = c("15"))
levels(data$last_substatus_behavior_issues.factor) = c("Last Substatus: Behavioral Issues")

data$last_substatus_term_dementia.factor = factor(data$last_substatus_term_dementia, levels = c("16"))
levels(data$last_substatus_term_dementia.factor) = c("Last Substatus: Terminated Dementia")

