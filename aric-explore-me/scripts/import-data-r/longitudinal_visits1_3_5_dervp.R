library(haven)

path_to_root_folder <- "../data"
name_of_subfolder <-  "Longitudinal"
name_of_sas_dataset <- "visits1_3_5_dervpavar_5_np.sas7bdat"

path_to_dataset <- paste0(path_to_root_folder, "/", name_of_subfolder, "/", name_of_sas_dataset)

dat <- read_sas(path_to_dataset)
