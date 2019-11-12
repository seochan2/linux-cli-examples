Bash script for Linux Monitoring
=============

### reference link

<https://www.mimul.com/blog/linux-server-operations/>

#### command line

Commands used to check real-time OS status

* ionice -c 2 -n 7 nice -n 19 top -c

Commands used to check CPU, DISK I/O, Memory Used

* sar -u 3 10

Commands used to check CPU Utilization, Process Info

* vmstat 1 10 

Commands used to check CPU Utilization sorted in descending order

* ps aux --sort=-%cpu

Commands used to check storage performance 

* iostat -dx 5 

Commands used to check login failed by account

* perl -ne 'print "$1\n" if(/Failed password for (\w.+) from/)' /var/log/secure | sort | uniq -c | sort -rn |head -10

Commands used to check login failed by IP

* perl -ne 'print "$1\n" if(/Failed password\D+((\d+\.){3}\d+)/)' /var/log/secure | sort | uniq -c | sort -rn |head -10
