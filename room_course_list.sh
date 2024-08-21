#!/bin/bash
read -p "Enter Room Name: " r_name
echo "List of courses that are held in $r_name"
grep $r_name ~/Desktop/202412083/LAB1/timetable.csv | cut -f3 -d"," | sort -u 
