# InstallGeyser
InstallGeyser is a simple script to download and install Geyser on Linux/MacOS

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
[3/4] Getting start.bat...
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
[1/5] Detecting and cleaning old installations...
[2/5] Downloading Geyser...
[3/5] Getting start.sh...
[4/5] Giving permissions to start.sh...
[5/5] Done! Now you can start Geyser with ./start.sh
[*] If you want, you can delete the script.
```
## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
