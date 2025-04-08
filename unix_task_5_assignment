===============================
1. Extract only ERROR messages with timestamps from a log file
===============================
Command:
awk '/ERROR/ {print $1, $2}' logfile.txt

Sample Input:
[2025-04-08 12:00:01] ERROR AuthModule Login failed
[2025-04-08 12:01:02] INFO AuthModule User logged in

Sample Output:
[2025-04-08 12:00:01] ERROR


===============================
2. Compute the average of each subject from tab-separated CSV
===============================
Command:
awk 'NR>1 {math+=$2; science+=$3; english+=$4} END {print "Math Avg:", math/(NR-1), "Science Avg:", science/(NR-1), "English Avg:", english/(NR-1)}' marks.csv

Sample Input:
ID	Math	Science	English
1	78	85	90
2	82	80	88
3	75	92	95

Sample Output:
Math Avg: 78.3333 Science Avg: 85.6667 English Avg: 91


===============================
3. Count occurrences of each IP address in server log
===============================
Command:
awk '{count[$1]++} END {for (ip in count) print ip, count[ip]}' server.log

Sample Input:
192.168.1.1 - - [17/Feb/2025:12:00:01] "GET /index.html"
192.168.1.2 - - [17/Feb/2025:12:05:23] "POST /login"
192.168.1.1 - - [17/Feb/2025:12:10:45] "GET /dashboard"

Sample Output:
192.168.1.1 2
192.168.1.2 1


===============================
4. Swap first and last words using sed
===============================
Command:
sed -E 's/^([a-zA-Z]+)(.*)([a-zA-Z]+)$/\3\2\1/' textfile.txt

Sample Input:
apple banana cherry

Sample Output:
cherry banana apple


===============================
5. Remove consecutive duplicate words using sed
===============================
Command:
sed -E 's/\b(\w+) \1\b/\1/g' dupes.txt

Sample Input:
hello hello world this is is a test test

Sample Output:
hello world this is a test

