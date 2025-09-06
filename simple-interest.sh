#!/bin/bash
# Script to calculate simple interest

# Formula: (Principal * Rate * Time) / 100

P=$1
R=$2
T=$3

SI=$(echo "scale=2; $P * $R * $T / 100" | bc)
echo "Simple interest = $SI"

