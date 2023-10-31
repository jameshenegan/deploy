import pandas as pd

# Import the oc_dfaqcuinventory Table
path_to_data = "../data-csv/oc_dfaqcuinventory.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    