import pandas as pd

# Import the nutr_blsaffqahei Table
path_to_data = "../data-csv/nutr_blsaffqahei.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    