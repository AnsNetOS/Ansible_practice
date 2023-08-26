# ! /usr/bin/bash       output of basic.sh and advanced.sh will be saved  as log 

function mainloop {

read -p "Enter s for taking snapshot" -t 10 Reply 
case $Reply in 

	s) echo "###Taking SS#####"
	   echo "####Basic log#####"
	   bash /home/anuragm@netmonastery.network/Practice/basic_project.sh >> "./log/$(date +'%Y_%m_%d_%H_%M').snapshot.log" 
 	   bash ./advance_project.sh >> "./log/$(date +	'%Y_%m_%d_%H_%M').snapshot.log"

	   ;;
	esac 

}

while :
do
sleep 3 
mainloop
done 

