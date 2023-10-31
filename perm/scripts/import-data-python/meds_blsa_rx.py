import pandas as pd

# Import the meds_blsa_rx Table
path_to_data = "../data-csv/meds_blsa_rx.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    