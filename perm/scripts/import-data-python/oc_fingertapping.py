import pandas as pd

# Import the oc_fingertapping Table
path_to_data = "../data-csv/oc_fingertapping.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    