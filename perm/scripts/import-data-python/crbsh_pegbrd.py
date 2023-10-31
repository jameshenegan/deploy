import pandas as pd

# Import the crbsh_pegbrd Table
path_to_data = "../data-csv/crbsh_pegbrd.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    