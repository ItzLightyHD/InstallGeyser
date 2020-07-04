@echo off
set BRANCH=feature%252F1.16
set CHANNEL=feature/1.16

echo [*] This installer will install the %CHANNEL% branch of Geyser for Windows
echo [1/4] Detecting and cleaning old installations...
del "Geyser.jar" >nul 2>&1
del "start.bat" >nul 2>&1
echo [2/4] Downloading Geyser...
powershell -command Invoke-WebRequest https://ci.nukkitx.com/job/GeyserMC/job/Geyser/job/%BRANCH%/lastSuccessfulBuild/artifact/bootstrap/standalone/target/Geyser.jar -OutFile Geyser.jar
echo [3/4] Writing start.bat...
@echo @echo off>start.bat
@echo java -Xmx1024M -Xms1024M -jar Geyser.jar>>start.bat
echo [4/4] Done! Now you can start Geyser by opening start.bat
echo [*] If you want, you can delete the script too.
