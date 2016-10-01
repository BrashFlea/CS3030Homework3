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
	echo " Usage: $0 [-s sed -a awk -i input]"
}

if [ $1 = "--help"]
then
	help
else
	while getopts ":" opt
	do
		case $opt in
		a) awkrc=$OPTARG;;
		s) sedsrc=$OPTARG;;
		i) datainputfile=$OPTARG;;
		\?)help

		esac
	done

	if [-z $6 ]
	then
		$6 | ./wildlings_hw3.sed | ./wildlings_hw3.awk > 20CenturyPresidents.txt

	else
		help
	fi
fi

exit 0
