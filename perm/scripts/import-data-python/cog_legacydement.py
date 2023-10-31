import pandas as pd

# Import the cog_legacydement Table
path_to_data = "../data-csv/cog_legacydement.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    