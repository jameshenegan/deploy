import pandas as pd

# Import the oc_ctchecklist Table
path_to_data = "../data-csv/oc_ctchecklist.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    