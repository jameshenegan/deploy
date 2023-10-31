import pandas as pd

# Import the oc_musclebiopsy Table
path_to_data = "../data-csv/oc_musclebiopsy.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    