#!/bin/bash - 
#===============================================================================
#
#          FILE: wildings_hw3.sh
# 
#         USAGE: ./wildings_hw3.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Alex Cragun (), alexcragun@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/29/2016 12:41
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error

function help
{
	echo "Missing arguments."
	echo "Usage: $0 [-s sed -a awk -i input]"
}

if [ $1 = "--help" ]
then
	help
else
	while getopts "s:a:i:" opt
	do
		case $opt in
		s) sedsrc=$OPTARG;;
		a) awkrc=$OPTARG;;
		i) datainputfile=$OPTARG;;
		\?)help;;
		esac
	done

	if [ -e "$datainputfile" ]
	then
		echo "Your output file will be located in 20CenturyPresidents.txt"
		sed -f $sedsrc $datainputfile | awk -f $awksrc > 20CenturyPresidents.txt
	else
		help
	fi
fi
exit 0
