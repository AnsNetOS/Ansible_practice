function Advanced() {

echo "#################"

#ps -eo 


echo "Mounted directory"


df -Th | awk 'BEGIN\
	{FS=" ";printf("%-40s\t%-20s\n","FS Name","Percent")} NR > 1 {printf "%-40s\t%-20s\n", $NF, $6}'

	
echo "#####################"
	}

	
Advanced 

