
## Task 6 — Add `simple-interest.sh` (2 pts)
**Add file → Create new file → simple-interest.sh**, paste and **Commit**:

```bash
#!/usr/bin/env bash
# simple-interest.sh: SI = P * R * T / 100
# Usage: ./simple-interest.sh PRINCIPAL RATE TIME
# Example: ./simple-interest.sh 1000 5 2  -> Simple interest = 100.00

if [ $# -ne 3 ]; then
  echo "Usage: $0 PRINCIPAL RATE TIME"
  exit 1
fi

P="$1"
R="$2"
T="$3"

# Use bc for decimals
SI=$(echo "scale=2; $P * $R * $T / 100" | bc)
echo "Simple interest = $SI"
