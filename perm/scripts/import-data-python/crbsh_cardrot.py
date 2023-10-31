import pandas as pd

# Import the crbsh_cardrot Table
path_to_data = "../data-csv/crbsh_cardrot.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    