local path_to_root_folder = "../data"
local  name_of_subfolder = "Surveillance/Stroke"
local  name_of_sas_dataset = "c19derv1_np.sas7bdat"
import sas using "`path_to_root_folder'/`name_of_subfolder'/`name_of_sas_dataset'", clear
