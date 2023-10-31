import pandas as pd

# Import the crbsh_neuflu Table
path_to_data = "../data-csv/crbsh_neuflu.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    