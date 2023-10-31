import pandas as pd

# Import the cog_blshvces Table
path_to_data = "../data-csv/cog_blshvces.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    