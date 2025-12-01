#!/bin/bash

#This checks if running as root
if [[ $EUID -ne 0 ]]; then 
	echo "Please run as root."
	exit 1
fi


#This ask for username
read -p "Enter new username: " username


#This creates user
useradd -m "$username"
echo "User $username created."


#This sets password
echo "Set password for $username:"
passwd "$username"


#Creates a restricted group (if it doesnt exist)
groupadd restructed 2>/dev/null


#Add user to resticted group
usermod -aG restricted "$username"
echo "User added to restricted group."


#Restrict sudo access (deny)
echo "$username ALL=(ALL) !ALL" >> /etc/sudoers.d/$username


echo "Permissions restricted for $username."
