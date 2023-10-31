import pandas as pd

# Import the nutr_blsaffqmind Table
path_to_data = "../data-csv/nutr_blsaffqmind.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    