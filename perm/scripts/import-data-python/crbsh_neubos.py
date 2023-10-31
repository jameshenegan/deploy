import pandas as pd

# Import the crbsh_neubos Table
path_to_data = "../data-csv/crbsh_neubos.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    