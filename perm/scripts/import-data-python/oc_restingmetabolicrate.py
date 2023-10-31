import pandas as pd

# Import the oc_restingmetabolicrate Table
path_to_data = "../data-csv/oc_restingmetabolicrate.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    