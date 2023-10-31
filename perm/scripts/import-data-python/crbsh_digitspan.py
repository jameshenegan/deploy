import pandas as pd

# Import the crbsh_digitspan Table
path_to_data = "../data-csv/crbsh_digitspan.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    