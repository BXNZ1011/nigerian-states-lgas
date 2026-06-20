# Nigerian States & LGAs Dataset

## 📖 Overview
This repository provides a structured dataset of Nigerian states, their capitals, populations, and local government areas (LGAs).  
The data is available in multiple formats (JSON, SQL, CSV) to make it easy to integrate into applications, research, and civic tech projects.

## 📂 Contents
- `data/states_lgas.json` → JSON dataset
- `data/states_lgas.sql` → SQL insert script
- `data/states_lgas.csv` → CSV dataset
- `docs/usage.md` → Documentation and usage examples

## 🚀 Usage

### **JSON (Python)**
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
