#!/bin/bash

file="/home/nitesh_sachde/Desktop/202412083/LAB1_Revision/timetable.csv"
read -p "Enter the time slot: " time
occupied=$(cut -d',' -f2,5 "$file" | grep "$time" | cut -d',' -f2)
rooms=$(cut -d',' -f5 "$file" | tail -n +2 | sort | uniq)
available=$(echo "$rooms" | grep -Fxv -f <(echo "$occupied"))
echo "Available Rooms: $available" | paste -sd ', '


