import pandas as pd

# Import the oc_intestinalpermeability Table
path_to_data = "../data-csv/oc_intestinalpermeability.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    