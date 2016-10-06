#Homework 3
#Jonathan Mirabile
#
#SED format expected: dd.mm.yy
read input
 -F, '{print $2 "from " $4 " to " $5}' $input |
awk -v x=1900 -F. '{if ($3 > x ) print $0}'


exit 0
