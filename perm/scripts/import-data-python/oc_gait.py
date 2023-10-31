import pandas as pd

# Import the oc_gait Table
path_to_data = "../data-csv/oc_gait.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    