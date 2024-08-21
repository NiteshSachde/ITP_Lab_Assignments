#!/bin/bash

file="/home/nitesh_sachde/Desktop/202412083/LAB1_Revision/timetable.csv"
cut -d',' -f3 "$file" | tail -n +2 | sort | uniq -c | sort -nr | head -n 1 | xargs -n2 bash -c 'echo "Course | Number of Classes"; echo "$1 | $0"'


