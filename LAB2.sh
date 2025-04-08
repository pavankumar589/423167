#!/bin/bash

# Print the name of the operating system
echo "Operating System Name:"
uname

# Print the login name
echo "Login Name:"
logname

# Print the host name
echo "Host Name:"
hostname

# Display calendars
echo "Calendar - January 2024:"
cal 1 2024

echo "Calendar - February 1995:"
cal 2 1995

echo "Calendar - September (9th month) 7 A.D:"
cal 9 7

echo "Calendar - Current Month:"
cal

# Display the current date in required format (e.g., "Mon Apr 08 2024")
echo "Current Date in Abbreviated Format:"
date "+%a %b %d %Y"

# Display the time in 12-hour notation
echo "Current Time (12-Hour Format):"
date +"%I:%M:%S %p"

# Display the time in 24-hour notation
echo "Current Time (24-Hour Format):"
date +"%H:%M:%S"

# Display both current date and time
echo "Current Date and Time:"
date

# Display "GOOD MORNING" in enlarged characters
echo "GOOD MORNING" | figlet

