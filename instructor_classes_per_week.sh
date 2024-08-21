#!/bin/bash

file="/home/nitesh_sachde/Desktop/202412083/LAB1_Revision/timetable.csv"

echo "Instructor | Number of Classes"
echo "-----------------------------"

cut -d',' -f4 "$file" | tail -n +2 | sort | uniq -c | while read count name; do
    printf "%-10s | %s\n" "$name" "$count"
done


