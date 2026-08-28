
#!/bin/bash
if [ -z "$1" ]
then
    echo "Date: $(date)"
    echo "Hostname: $(hostname)"
    echo "Uptime: $(uptime)"

    echo "Date: $(date)" > report.txt
    echo "Hostname: $(hostname)" >> report.txt
    echo "Uptime: $(uptime)" >> report.txt
else
    echo "Report for: $1"
    echo "Date: $(date)"
    echo "Hostname: $(hostname)"
    echo "Uptime: $(uptime)"

    echo "Report for: $1" > report.txt
    echo "Date: $(date)" >> report.txt
    echo "Hostname: $(hostname)" >> report.txt
    echo "Uptime: $(uptime)" >> report.txt
fi

