import pandas as pd

# Import the crbsh_wrat Table
path_to_data = "../data-csv/crbsh_wrat.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    