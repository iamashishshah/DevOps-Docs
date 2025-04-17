find
mv
copy or cp
chmod
---------------USER MANAGEMENT----------------
we give permissions to user to access the resources:
there are three types of user: 
1. root users: it has id = 0
2. system users: the system user has id range: 1-999
3. local users >999 to 60000(and it is changable)

## why we don't use Root user for everyday task?
sudo apt update && sudo apt upgrade
whoami: gives username
sudo cat /etc/passwd: to list the user or to show linux database

root:x:0:0:/root:/bin/bash
name:password:id:groupid:home dir

ubuntu:x:1000:Ubuntu:/home/ubuntu:/bin/bash
localUser:pass:id:gid:name:/user

sudo cat /etc/shadow
root:*:
id username(eg:ubuntu): to see more details about a user

to create a user: 1. low leverl cmd lide, 2. high level cmd line

sudo useradd nameofuser(chaicode)(it is low level cmd line so it doens't do much)
sudo ls /home

sudo password chaicode: to give password to user

sudo useradd -m: home directory will be automaticlly created but we've to create skeleton manually
sudo userdel -r username(chaicode)
sudo adduser username(ashish): high level cmd line to create a new user
sudo ls /home
sudo ls -la /home/ashish
sudo cat /etc/group

sudo addgroup developer : to make group so that we can add user many one group
how to see all the users in a group:hw check cmd line

sudo usermod -aG groupname(developers) username(ashish)

sudo delgroup groupname: to delete the groud
sudo cat /etc/group: to see the group's users
sudo usermod -l codersgyam ashish: to change the username

sudo usermod -d newdir codersgyam: to change the user's home directory

## to login using created user

shh i codersgyam@ip_address


## how to enable password authentication:
to make this happen, we need to change a config knows as etc folder
all the configuration will be stored here only

cmd line: cd /etc/shh: to get ssh configuration

cd sshd_config.d/: to change the permission

then will do ls and we'll get .conf file

use text-editor to to edit: sudo vim file_name.conf

to restart the ssh servive
sudo systemctl restart shh

su - codersgyan then password: 
whoami

sudo -u pokemon mkdir -p /home/pokemon/.shh (ownership will have pokemon)

to give completely permission to owner
sudo chmod 700




## How to generate ssh key to login
ssh-keygen -t rsa 4096 -f  Desktop/id_rsa.codersgyan         ./Desktop(destination folder name)

ls | grep id-