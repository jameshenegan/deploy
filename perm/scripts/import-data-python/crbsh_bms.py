import pandas as pd

# Import the crbsh_bms Table
path_to_data = "../data-csv/crbsh_bms.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    