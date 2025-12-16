grep "ERROR" logfile.txt | awk '{print $1, $2, $0}'

