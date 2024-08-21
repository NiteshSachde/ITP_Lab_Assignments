#!/bin/bash
read -p "Enter Instructor Name: " i_name
echo "Number of courses that are taught by $i_name is"
grep $i_name ~/Desktop/202412083/LAB1/timetable.csv | cut -f3 -d"," | sort -u | wc -l
