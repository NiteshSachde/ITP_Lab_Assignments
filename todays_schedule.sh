#!/bin/bash
today=$(date +"%A")
echo $today
grep $today ~/Desktop/202412083/LAB1/timetable.csv
