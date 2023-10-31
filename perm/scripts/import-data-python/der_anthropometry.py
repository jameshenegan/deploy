import pandas as pd

# Import the der_anthropometry Table
path_to_data = "../data-csv/der_anthropometry.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    