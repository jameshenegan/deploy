local path_to_root_folder = "../data"
local  name_of_subfolder = "@MIND_ARIC_NP"
local  name_of_sas_dataset = "apoe_new_p.sas7bdat"
import sas using "`path_to_root_folder'/`name_of_subfolder'/`name_of_sas_dataset'", clear
