import pandas as pd

# Import the oc_blessedmental Table
path_to_data = "../data-csv/oc_blessedmental.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    