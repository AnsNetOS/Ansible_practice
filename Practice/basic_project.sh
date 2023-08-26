function Basic {
echo "######################"
echo "Welcome to Server Monitoring X"
echo "#######################"
echo "Current date and time $(date)"
echo "#######################"
echo "Currenty logged in user: $(whoami)"
echo "#######################"
echo "Last booting time at : $(who -b | awk -F " " '{print $3,$4}' )"
echo "The total uptime is : $(uptime | awk -F " " '{print $3 }' | tr -d [,])"
echo "#######################"
echo "Firewall status : $(systemctl status firewalld)"
echo "#######################"
echo "#######################"
echo "os-version: $( grep -Po "(?<=PRETTY_NAME=).*(?=\")"  /etc/os-release )" | tr -d [\"] ### positive loopback and after that positive loop ahead 
echo "Total available RAM"
echo "$(free -m | awk -F " " 'NR==2{print $NF, "MB"}' )"
echo "Hostname : $(hostname)"
}


Basic 
