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
