import pandas as pd

# Import the oc_nervesensitivity Table
path_to_data = "../data-csv/oc_nervesensitivity.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    