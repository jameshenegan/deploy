import pandas as pd

# Import the nutr_blsaffqmds Table
path_to_data = "../data-csv/nutr_blsaffqmds.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    