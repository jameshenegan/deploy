import pandas as pd

# Import the oc_fluvaccine Table
path_to_data = "../data-csv/oc_fluvaccine.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    