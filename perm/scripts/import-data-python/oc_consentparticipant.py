import pandas as pd

# Import the oc_consentparticipant Table
path_to_data = "../data-csv/oc_consentparticipant.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    