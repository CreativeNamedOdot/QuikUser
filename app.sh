#!/bin/bash

echo '
     __ __  ____        _ __   __  __              
  __/ // /_/ __ \__  __(_) /__/ / / /_______  _____
 /_  _  __/ / / / / / / / //_/ / / / ___/ _ \/ ___/
/_  _  __/ /_/ / /_/ / / ,< / /_/ (__  )  __/ /    
 /_//_/  \___\_\__,_/_/_/|_|\____/____/\___/_/ 

'
sleep 2

echo 'QuikUser: An user management system'
echo 'Created by: ODOT!'

sleep 2

echo 'Enter Username: '

read uname

echo Adding new user:  $uname. 

echo 'Please hold....'

sudo useradd $uname

sleep 3

echo Would you like $uname to have root privilages?

read rootusr

if [ $rootusr == 'y' ]; then
	sudo usermod -aG sudo $uname
	echo 'Caution: User has ROOT privilages!'
	sleep 2
	echo 'Creating  List of All Users...'
	sleep 2
	sudo cat /etc/passwd | tee ListofUsers.xml
	
	
	echo 'Thanks for using #QuikUser!'
else
	echo 'User is NOT added to root group'
	sleep 2
	echo 'Thanks for using #QuikUser!'
fi







