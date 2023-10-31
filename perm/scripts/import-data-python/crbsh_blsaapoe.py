import pandas as pd

# Import the crbsh_blsaapoe Table
path_to_data = "../data-csv/crbsh_blsaapoe.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    