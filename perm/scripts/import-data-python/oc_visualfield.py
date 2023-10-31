import pandas as pd

# Import the oc_visualfield Table
path_to_data = "../data-csv/oc_visualfield.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    