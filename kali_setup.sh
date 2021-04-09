wget https://raw.githubusercontent.com/21y4d/nmapAutomator/master/nmapAutomator.sh 
chmod +x nmapAutomator.sh
mv nmapAutomator.sh $toolsDir

### windows privesc
mkdir /home/$username/tools/winprivesc/ 
winPrivDir="/home/$username/tools/winprivesc/"

### windows exploit suggester
wget https://raw.githubusercontent.com/AonCyberLabs/Windows-Exploit-Suggester/master/windows-exploit-suggester.py -P $winPrivDir

#### winpeas

wget https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite/raw/master/winPEAS/winPEASexe/winPEAS/bin/x64/Release/winPEAS.exe -O 64Winpeas.exe -P $winPrivDir

wget https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite/blob/master/winPEAS/winPEASexe/winPEAS/bin/x86/Release/winPEAS.exe -O 86Winpeas.exe -P $winPrivDir

### linux privesc
mkdir /home/$username/tools/linprivesc/ 
linPrivDir="/home/$username/tools/linprivesc/"

#### linpeas
wget https://raw.githubusercontent.com/carlospolop/privilege-escalation-awesome-scripts-suite/master/linPEAS/linpeas.sh -P $linPrivDir

#### linenum
wget https://raw.githubusercontent.com/rebootuser/LinEnum/master/LinEnum.sh -P $linPrivDir

#### linux-exploit-suggester
wget https://raw.githubusercontent.com/mzet-/linux-exploit-suggester/master/linux-exploit-suggester.sh -P $linPrivDir

#### lse
wget https://raw.githubusercontent.com/diego-treitos/linux-smart-enumeration/master/lse.sh -P $linPrivDir

#### linuxprivchecker
wget https://raw.githubusercontent.com/sleventyeleven/linuxprivchecker/master/linuxprivchecker.py -P $linPrivDir

#### pspy_all_versions
wget https://github.com/DominicBreuker/pspy/releases/download/v1.2.0/pspy64 -P $linPrivDir
wget https://github.com/DominicBreuker/pspy/releases/download/v1.2.0/pspy64s -P $linPrivDir
wget https://github.com/DominicBreuker/pspy/releases/download/v1.2.0/pspy32 -P $linPrivDir
wget https://github.com/DominicBreuker/pspy/releases/download/v1.2.0/pspy32s -P $linPrivDir
chmod +x $linPrivDir/pspy*

## aliases

echo "alias automap='sudo bash /home/douglas/tools/nmapAutomator.sh'" >> /home/$username/.zshrc
echo "alias simp='python -m SimpleHTTPServer'" >> /home/$username/.zshrc
echo "alias msfpc='bash /home/douglas/tools/msfpc.sh'" >> /home/$username/.zshrc
