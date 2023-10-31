import pandas as pd

# Import the crbsh_bvr Table
path_to_data = "../data-csv/crbsh_bvr.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    