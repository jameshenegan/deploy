import pandas as pd

# Import the oc_headinjuryquestionnaire Table
path_to_data = "../data-csv/oc_headinjuryquestionnaire.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    