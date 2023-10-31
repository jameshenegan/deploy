import pandas as pd

# Import the oc_ticsm Table
path_to_data = "../data-csv/oc_ticsm.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    