# InstallGeyser
InstallGeyser is a simple script to download and install Geyser on Windows/Linux/MacOS

**WARNING:** For any help about Geyser, contact the official Geyser support (http://discord.geysermc.org/)

## Requirements
On Windows, you need Java 8 to run Geyser; on Linux/MacOS you need wget to get the installer, then you need Java 8 to run Geyser.

## Usage
### Windows
You only need to execute this command on your Windows machine
```bat
powershell -command Invoke-WebRequest https://raw.githubusercontent.com/ItzLightyHD/InstallGeyser/master/installgeyser.bat -OutFile installgeyser.bat && installgeyser.bat
```
Now the installer will clean the old installations and download the recommended branch of Geyser. After the installing process, the log should be like this:
```
[*] This installer will install the feature/sounds branch of Geyser for Windows
[1/4] Detecting and cleaning old installations...
[2/4] Downloading Geyser...
[3/4] Writing start.bat...
[4/4] Done! Now you can start Geyser by opening start.bat
[*] If you want, you can delete the script too.
```
### Linux/MacOS
You only need to execute this command on your Linux/MacOS machine.
```shell
wget -q https://raw.githubusercontent.com/ItzLightyHD/InstallGeyser/master/installgeyser && bash installgeyser
```
Now the installer will clean the old installations and download the recommended branch of Geyser. After the installing process, the log should be like this:
```
[*] The installer is installing feature/sounds branch of Geyser
[1/4] Detecting and cleaning old installations...
[2/4] Downloading Geyser...
[3/4] Writing start.sh and giving it the permissions...
[5/4] Done! Now you can start Geyser with ./start.sh
[*] If you want, you can delete the script.
```
### Android

First, you need to install Termux and Hacker's Keyboard from the Google Play Store, then when you open Termux, it will install his Linux minimal environment. Now we need to install some required packages with "pkg install root-repo wget nano proot", then create a folder with "mkdir ubuntu && cd ubuntu", so we can download and install Ubuntu in it with "wget -q https://raw.githubusercontent.com/MFDGaming/ubuntu-in-termux/master/ubuntu.sh && bash ubuntu.sh", the script will download and install Ubuntu in the folder. After the script installed Ubuntu, we can run Ubuntu using "./startubuntu.sh".
In the Ubuntu environment, we need to update the repository and Ubuntu itself, so let's do "apt update && apt upgrade". Now, we can install the required packages with "apt install wget nano default-jre" (default-jre is the latest JRE release); during the installation, it will ask you the Geographic Area and the Timezone. Now, we can create a folder with "mkdir Geyser && cd Geyser", then we can run the command to install Geyser, that is "wget -q https://raw.githubusercontent.com/ItzLightyHD/InstallGeyser/master/installgeyser && bash installgeyser", after this, we can start Geyser with "./start.sh". When you want to config the config.yml, just stop Geyser and use "nano config.yml", then use the Hacker's Keyboard arrows to navigate into the file, then save it with "CTRL + X".
## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
