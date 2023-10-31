import pandas as pd

# Import the cog_blscesd Table
path_to_data = "../data-csv/cog_blscesd.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    