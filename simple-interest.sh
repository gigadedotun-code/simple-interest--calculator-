#!/bin/bash

# Simple Interest Calculator

echo "Enter Principal Amount:"
read principal

echo "Enter Rate of Interest (per year):"
read rate

echo "Enter Time Period (in years):"
read time

simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

echo "The Simple Interest is: $simple_interest"

total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

echo "The Total Amount is: $total_amount"
