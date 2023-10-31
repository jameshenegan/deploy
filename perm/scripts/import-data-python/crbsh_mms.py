import pandas as pd

# Import the crbsh_mms Table
path_to_data = "../data-csv/crbsh_mms.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    