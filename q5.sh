#!/bin/bash

input_file="employees.txt"
cleaned_file="cleaned_employees.txt"
it_file="it_employees.txt"
final_output="final_employees.txt"

# Step 1: Remove comment lines (using sed)
sed '/^#/d' "$input_file" > "$cleaned_file"

# Step 2: Extract only IT department employees (using awk)
awk '$3 == "IT" { print }' "$cleaned_file" > "$it_file"

# Step 3: Calculate average salary (using awk)
awk '{ total += $4; count++ } END { print "Average IT Salary:", total / count }' "$it_file"

# Step 4: Replace 'IT' with 'Tech' in the IT employee list (using sed)
sed 's/\bIT\b/Tech/' "$it_file" > "$final_output"

echo "Final processed file:"
cat "$final_output"

