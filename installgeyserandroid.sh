BRANCH="master"
CHANNEL="master"

echo [*] This installer will install $CHANNEL branch of Geyser for Android
echo [1] Installing requirements to install Ubuntu...
pkg install -y proot wget
echo [2] Downloading and installing Ubuntu...
mkdir ubuntu && cd ubuntu
wget https://raw.githubusercontent.com/Neo-Oli/termux-ubuntu/master/ubuntu.sh
sed -i 's/disco/focal/g' bash ubuntu.sh
echo [3] Writing .bashrc to start Ubuntu and Geyser by a command...
cd $HOME
cat >.bashrc <<EOT
alias geyser='cd $HOME/ubuntu; sed -i 's/#command+=" -b \/data/command+=" -b \/data/g' start-ubuntu.sh; java -Xmx1024M -Xms1024M -jar Geyser.jar'
EOT

echo [4] Executing Ubuntu and doing preliminary things before installing Geyser...
cd $HOME/ubuntu
sed -i 's/#command+=" -b \/data/command+=" -b \/data/g' start-ubuntu.sh
cd ~

cat >.profile <<EOM
echo "[5] Installing all requirements for Geyser..."
BRANCH="master"
apt update
apt install -y default-jre nano wget
echo "[6] Downloading and installing Geyser..."
wget --no-check-certificate -q https://ci.nukkitx.com/job/GeyserMC/job/Geyser/job/$BRANCH/lastSuccessfulBuild/artifact/bootstrap/standalone/target/Geyser.jar

echo "[7] Done! You can now start Geyser at any time using 'geyser'"
echo "[*] If you want to edit the config.yml file, stop Geyser, and do config.yml, then exit from Ubuntu and start Geyser again"

rm -rf .profile

exit
EOM

exit
./start-ubuntu.sh