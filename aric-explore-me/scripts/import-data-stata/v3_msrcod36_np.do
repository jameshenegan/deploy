local path_to_root_folder = "../data"
local  name_of_subfolder = "V3"
local  name_of_sas_dataset = "msrcod36_np.sas7bdat"
import sas using "`path_to_root_folder'/`name_of_subfolder'/`name_of_sas_dataset'", clear
