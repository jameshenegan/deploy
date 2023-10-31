import pandas as pd

# Import the oc_emg Table
path_to_data = "../data-csv/oc_emg.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    