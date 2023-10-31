import pandas as pd

# Import the der_medicalhx Table
path_to_data = "../data-csv/der_medicalhx.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    