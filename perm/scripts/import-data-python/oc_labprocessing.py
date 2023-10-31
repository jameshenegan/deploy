import pandas as pd

# Import the oc_labprocessing Table
path_to_data = "../data-csv/oc_labprocessing.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    