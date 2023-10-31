import pandas as pd

# Import the nutr_blsaffqhei2015 Table
path_to_data = "../data-csv/nutr_blsaffqhei2015.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    