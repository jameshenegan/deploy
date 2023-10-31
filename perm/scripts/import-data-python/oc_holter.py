import pandas as pd

# Import the oc_holter Table
path_to_data = "../data-csv/oc_holter.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    