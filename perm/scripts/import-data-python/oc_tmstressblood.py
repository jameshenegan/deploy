import pandas as pd

# Import the oc_tmstressblood Table
path_to_data = "../data-csv/oc_tmstressblood.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    