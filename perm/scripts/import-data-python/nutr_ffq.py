import pandas as pd

# Import the nutr_ffq Table
path_to_data = "../data-csv/nutr_ffq.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    