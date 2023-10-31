import pandas as pd

# Import the labs_blsaocparticipantlabs Table
path_to_data = "../data-csv/labs_blsaocparticipantlabs.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    