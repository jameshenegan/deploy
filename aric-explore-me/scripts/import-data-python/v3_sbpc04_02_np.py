import pandas as pd

path_to_root_folder = "../data"
name_of_subfolder = "V3"
name_of_sas_dataset = "sbpc04_02_np.sas7bdat"
path_to_dataset = f'{path_to_root_folder}/{name_of_subfolder}/{name_of_sas_dataset}'
df = pd.read_sas(path_to_dataset, encoding='latin8')
