# Linux-User-Management-Permission-Hardening-Script

A Bash script designed for Linux System administration to securely create new users, assign them to a restricted group, and block sudo access using the /etc/sudoers.d directory.
This automates a common IT task and helps enforce the principle of least privilege

Features
- Checks if the script is run as root
- Prompts for a new username
- Creates the user and home directory
- Sets a user password
- Creates a restricted group (if it doesn't exist)
- Adds the user to the restricted group
- Denies sudo privileges for the new user via /etc/sudoers.d
- Provides clean, readable admin feedback throughout

Technologies Used
- Bash Scripting
- Linux user management (useradd, passwd, groupadd, usermod)
- Sudoers configuration (/etc/sudoers.d)
- Permission hardening concepts

How it works
1. Root check - Script exits if not run as root
2. Username prompt - user is created with a home directory
3. Account creation - user is created with a home directory
4. Password Prompt - administration sets the account password
5. Restricted group creation - creates the group if missing
6. User added to restricted group
7. Sudo denial - writes a rule that prevents the new user from running any sudo command
8. Final confirmation messages

Usage
1. Clone the Repository- git clone https://github.com/Jon-dot-dot/Linux-User-Management-Permission-Hardening-Script
   cd Linux-User-Management-Permission-Hardening-Script
2. Make the script executable - chmod +x create_user.sh
3. Run the script as root - sudo ./create_user.sh
4. Follow the on-screen prompts
     - Enter username
     - Set password
     - Script handles restrictions automatically

Security Notes
- Uses /etc/sudoers.d for safer sudo modifications (avoids editing the main sudoers file)
- Implements least privilege access model
- Good for onboarding users who do not need administrative rights
  
