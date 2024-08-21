#!/bin/bash

file="/home/nitesh_sachde/Desktop/202412083/LAB1_Revision/timetable.csv"

earliest_class=$(tail -n +2 "$file" | sort -t',' -k2 | head -n 1)

day=$(echo "$earliest_class" | cut -d',' -f1)
time=$(echo "$earliest_class" | cut -d',' -f2)
instructor=$(echo "$earliest_class" | cut -d',' -f4)

echo "Earliest Class: $instructor, $time on $day"

