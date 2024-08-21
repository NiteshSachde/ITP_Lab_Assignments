#!/bin/bash

file="/home/nitesh_sachde/Desktop/202412083/LAB1_Revision/timetable.csv"
read -p "Enter the room number: " room
echo -e "Day      | Time        | Course   | Instructor"
echo "---------------------------------------------"
grep "$room" "$file" | cut -d',' -f1,2,3,4 | while IFS=',' read -r day time course instructor; do
    echo "$day | $time | $course | $instructor"
    echo "---------------------------------------------"
done

