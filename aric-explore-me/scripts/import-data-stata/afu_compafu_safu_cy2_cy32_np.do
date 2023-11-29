local path_to_root_folder = "../data"
local  name_of_subfolder = "AFU"
local  name_of_sas_dataset = "compafu_safu_cy2_cy32_np.sas7bdat"
import sas using "`path_to_root_folder'/`name_of_subfolder'/`name_of_sas_dataset'", clear
