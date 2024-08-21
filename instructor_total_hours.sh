#!/bin/bash
awk -F, 'NR > 1 {
    split($2, t, "-")
    start = substr(t[1], 1, 2) + substr(t[1], 4, 2) / 60
    end = substr(t[2], 1, 2) + substr(t[2], 4, 2) / 60
    total[$4] += (end - start)
}
END {
    print "Instructor | Total Hours"
    for (instructor in total) 
        printf "%s | %.0f\n", instructor, total[instructor]
}' /home/nitesh_sachde/Desktop/202412083/LAB1_Revision/timetable.csv



