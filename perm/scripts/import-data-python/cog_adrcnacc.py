import pandas as pd

# Import the cog_adrcnacc Table
path_to_data = "../data-csv/cog_adrcnacc.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    