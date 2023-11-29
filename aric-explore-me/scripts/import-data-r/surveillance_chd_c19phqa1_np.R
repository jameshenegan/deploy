library(haven)

path_to_root_folder <- "../data"
name_of_subfolder <-  "Surveillance/CHD"
name_of_sas_dataset <- "c19phqa1_np.sas7bdat"

path_to_dataset <- paste0(path_to_root_folder, "/", name_of_subfolder, "/", name_of_sas_dataset)

dat <- read_sas(path_to_dataset)
