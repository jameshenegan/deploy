local path_to_root_folder = "../data"
local  name_of_subfolder = "V2"
local  name_of_sas_dataset = "ubmewm4_np.sas7bdat"
import sas using "`path_to_root_folder'/`name_of_subfolder'/`name_of_sas_dataset'", clear
