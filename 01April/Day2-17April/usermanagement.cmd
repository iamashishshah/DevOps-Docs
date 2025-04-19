# Add a new user
sudo useradd <username>

# Set a password for the user
sudo passwd <username>

# Delete a user
sudo userdel <username>

# Add a user to a group
sudo usermod -aG <groupname> <username>

# Remove a user from a group
sudo gpasswd -d <username> <groupname>

# Create a new group
sudo groupadd <groupname>

# Delete a group
sudo groupdel <groupname>

# List all users
cat /etc/passwd

# List all groups
cat /etc/group

# Lock a user account
sudo usermod -L <username>

# Unlock a user account
sudo usermod -U <username>

# Change a user's shell
sudo usermod -s /bin/bash <username>

# Change a user's home directory
sudo usermod -d /new/home/directory <username>