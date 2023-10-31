import pandas as pd

# Import the oc_purposeinlife Table
path_to_data = "../data-csv/oc_purposeinlife.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    