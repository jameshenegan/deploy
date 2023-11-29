local path_to_root_folder = "../data"
local  name_of_subfolder = "Longitudinal"
local  name_of_sas_dataset = "visits1_3_5_dervpavar_5_np.sas7bdat"
import sas using "`path_to_root_folder'/`name_of_subfolder'/`name_of_sas_dataset'", clear
