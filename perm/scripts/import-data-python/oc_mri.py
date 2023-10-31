import pandas as pd

# Import the oc_mri Table
path_to_data = "../data-csv/oc_mri.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    