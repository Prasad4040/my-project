#!/bin/bash

# This script calculates simple interest

principal=$1
rate=$2
time=$3

if [ -z "$principal" ] || [ -z "$rate" ] || [ -z "$time" ]; then
  echo "Usage: $0 <principal> <rate> <time>"
  exit 1
fi

interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
echo "The simple interest is: $interest"
