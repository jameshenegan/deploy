import pandas as pd

# Import the oc_pft Table
path_to_data = "../data-csv/oc_pft.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    