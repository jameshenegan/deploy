import pandas as pd

# Import the cog_expces Table
path_to_data = "../data-csv/cog_expces.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    