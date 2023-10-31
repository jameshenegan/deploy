import pandas as pd

# Import the nutr_blsaallf Table
path_to_data = "../data-csv/nutr_blsaallf.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    