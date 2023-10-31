import pandas as pd

# Import the oc_skinbiopsy Table
path_to_data = "../data-csv/oc_skinbiopsy.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    