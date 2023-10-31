import pandas as pd

# Import the inst_ekg Table
path_to_data = "../data-csv/inst_ekg.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    