# Usage Guide — Nigerian States & LGAs

This document shows how to use the Nigerian States & LGAs dataset in different formats.

---

## JSON

Load the dataset in Python:
```python
import json

with open("data/states_lgas.json") as f:
    states = json.load(f)
    print(states[0]["lgas"])
```

### SQL 
Load the dataset in SQL:
```python
\i data/states_lgas.sql
SELECT * FROM states WHERE name='Lagos';
```

## CSV
Load the dataset in Python:
```python
import pandas as pd
df = pd.read_csv("data/states_lgas.csv")
print(df[df['state'] == 'Kano'])
```
