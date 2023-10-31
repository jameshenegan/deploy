import pandas as pd

# Import the oc_dexa Table
path_to_data = "../data-csv/oc_dexa.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    