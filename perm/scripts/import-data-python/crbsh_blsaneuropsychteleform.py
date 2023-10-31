import pandas as pd

# Import the crbsh_blsaneuropsychteleform Table
path_to_data = "../data-csv/crbsh_blsaneuropsychteleform.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    