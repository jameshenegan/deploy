import pandas as pd

# Import the crbsh_digitsym Table
path_to_data = "../data-csv/crbsh_digitsym.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    