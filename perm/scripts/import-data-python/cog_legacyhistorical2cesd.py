import pandas as pd

# Import the cog_legacyhistorical2cesd Table
path_to_data = "../data-csv/cog_legacyhistorical2cesd.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    