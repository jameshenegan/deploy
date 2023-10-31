import pandas as pd

# Import the oc_swallowingquestionnaire Table
path_to_data = "../data-csv/oc_swallowingquestionnaire.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    