#!/bin/bash
mkdir students_directory
touch students_directory/cohort-1.txt
touch students_directory/cohort-2.txt
touch students_directory/cohort-3.txt

# Define the students directory and cohort names
students_directory="students_directory"
cohorts=("Cohort_1" "Cohort_2" "Cohort_3" "Cohort_4")

# Check if the students directory exists
if [ ! -d "$students_directory" ]; then
    echo "Directory $students_directory does not exist. Creating it now."
    mkdir "$students_directory"
else
    echo "Directory $students_directory already exists."
fi

# Loop through the cohorts array and create files for each cohort
for cohort in "${cohorts[@]}"; do
    cohort_file="$students_directory/$cohort.txt"

    # Check if the file already exists
    if [ ! -f "$cohort_file" ]; then
        echo "Creating file for $cohort cohort."
        touch "$cohort_file"
    else
        echo "File for $cohort already exists."
    fi
done

# Push the script to GitHub (assuming the repo is already initialized and configured)
git add the_coder.sh
git commit -m "Updated script to check directory and create cohort files"
git push origin main
