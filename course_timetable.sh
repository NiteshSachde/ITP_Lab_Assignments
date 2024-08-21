#!/bin/bash
read -p "Enter Course Name: " c_name
echo "Time-Table for $c_name is"
grep $c_name ~/Desktop/202412083/LAB1/timetable.csv
