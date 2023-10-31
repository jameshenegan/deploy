import pandas as pd

# Import the cog_adrcpathnacc Table
path_to_data = "../data-csv/cog_adrcpathnacc.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    