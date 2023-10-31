import pandas as pd

# Import the oc_cogstate Table
path_to_data = "../data-csv/oc_cogstate.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    