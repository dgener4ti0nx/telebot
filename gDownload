#!/bin/sh

# This script downloads files using a sequence in rclone

usage()
{ 
	echo -e "Usage:\n"\
	"[-h Returns the usage of this script]\n"\
	"[-c Returns the compacted cases from the cloud]\n"\
	"[-r Returns the results from the cloud]" 1>&2; exit 1;
}

# Check if option exists
if [[ ! $@ =~ ^\-.+ ]]
then
  usage
fi

# Read the arguments
while getopts :hcr: opt; do
	case ${opt} in
		h)usage;;
		c)config=1;;
		r)result=1;;
		\:)usage;;
		\?)usage;;
	esac
done

read -p 'Initial number: ' init
read -p 'Final number: ' final

for i in `seq -s " " -f %03g $init $final`; do
	if [[ -v ${config} ]]; then
		rclone copy -vv LUIZ:tempResults/ --include "x${i}*" x${i}/ > x${i}/rclone.log
		echo "Simulation x${i} downloaded."
	elif [[ -v ${result} ]]; then
		rclone copy -vv LUIZ:tempCases/ --include "x${i}*" .
		unzip x${i}
		rm x${i}.zip
		echo "Simulation x${i} downloaded."
	fi	
done

printf '%*s' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
echo -e "All Done"
