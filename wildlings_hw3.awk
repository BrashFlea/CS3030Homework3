#Homework 3
#Jonathan Mirabile
#
#SED format expected: dd.mm.yy
awk -F, '{print $2 " " "." $4}' presidents.csv |
awk -v x=1900 -F. '{if ($4 > x ) print $1}'


exit 0
