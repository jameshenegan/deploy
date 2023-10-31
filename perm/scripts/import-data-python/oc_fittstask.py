import pandas as pd

# Import the oc_fittstask Table
path_to_data = "../data-csv/oc_fittstask.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    