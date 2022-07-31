@echo off
:: Discord: jinx#6828 | Discord Server: https://discord.gg/kHNYBYVDRn | If you're gonna use any part of the code give me credit !
:mainmenu
title grieftool by  jinx#6828
cls
echo                                       JINX TOOL
echo.
echo 1.Domain Lookup
echo 2.Grief Commands
echo 3.Port Scanner
echo 4.Player Lookup
echo 5.IpGeoLookup
echo 6.Bypasses
echo 7.Bungee Create
echo 8.DB Searcher
echo 9.Server Lookup
echo 10.Clients List
echo.
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
if %okay%==10 goto clientslist
cls

:domainlookup
cls
echo.
echo Enter the domain in (example youtube.com).
echo Type in 69 to go back to the menu.
echo.
set /p domain=Type the domain in:
cls
curl -s https://api.hackertarget.com/dnslookup/?q=%domain%
echo.
if %domain%==69 goto mainmenu
echo.
echo 1.Lookup another domain
echo 2.Go back to the main menu
echo.
set /p backtomm2=Select your option:
if %backtomm2%==1 goto domainlookup
if %backtomm2%==2 goto mainmenu

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
echo.
echo 1.Qubo Scan ( For smaller port ranges )
echo 2.Nmap Scan ( For bigger port ranges )
echo 3.Main Menu
echo.
set /p choosemode=Enter your option:
if %choosemode%==1 goto quboscan
if %choosemode%==2 goto nmapscan
if %choosemode%==3 goto mainmenu
cls

:quboscan
cls
echo.
set /p IP=Enter your IP:
echo.
set /p PORTS=Enter your ports:
echo.
java -jar -Dfile.encoding=UTF-8 qubo.jar -range %IP% -ports %PORTS% -th 500 -ti 1000
echo.
echo 1.Scan another IP
echo 2.Go back to the main menu
echo.
set /P backtomm3=Select your option:
if %backtomm3%==1 goto quboscan
if %backtomm3%==2 goto mainmenu

:nmapscan
cls
echo.
set /p IP1=Enter your IP:
echo.
set /P PORTS1=Enter your ports:
echo.
nmap -p %PORTS1% -T5 -v -A -Pn %IP1%
echo.
echo 1.Scan another IP
echo 2.Go back to the main menu
echo.
set /P backtommns=Select your option:
if %backtommns%==1 goto nmapscan
if %backtommns%==2 goto mainmenu

:serverlookup
cls
echo.
echo This is the server lookup.
echo Example of IP - hypixel.net or 127.0.0.1.
echo.
set /P serverlookup=Enter the IP:
cls
echo.
curl -s https://mcstatus.snowdev.com.br/api/query/v3/%serverlookup%
echo.
echo 1.Lookup another server
echo 2.Go back to the main menu
echo.
set /p backtomm14=Select your option:
if %backtomm14%==1 goto serverlookup
if %backtomm14%==2 goto mainmenu

:playerlookup
cls
echo.
echo This is the player lookup.
echo Example of Nick - IceRush.
echo.
set /p playerlookup=Enter the Nick:
cls
echo.
curl -s https://api.mojang.com/users/profiles/minecraft/%playerlookup%
echo }
echo.
echo 1.Lookup another player
echo 2.Go back to the main menu
echo.
set /p backtomm4=Select your option:
if %backtomm4%==1 goto playerlookup
if %backtomm4%==2 goto mainmenu

:bypasses
cls
echo.
echo 1.OnlyProxyJoin Bypass
echo 2.Premium Server Bypass
echo 3.AntiVPN Bypass
echo 4.Authme Bypass
echo 5.Any Protection Plugin Bypass
echo 6.Main Menu
echo.
set /p bypasses=Enter a number:
if %bypasses%==1 goto opjbypass
if %bypasses%==2 goto premsrwbypass
if %bypasses%==3 goto antivpnbypass
if %bypasses%==4 goto authmebypass
if %bypasses%==5 goto appbypass
if %bypasses%==69 goto mainmenu
if %bypasses%==6 goto mainmenu

:opjbypass
cls
echo.
echo Use Dymeth Client or other (you can download one of the clients in my tool )
echo Enter the owner's nick and for your fake ip simply type in 1.1.1.1, 0.0.0.0 or 127.0.0.1
echo Or create a local bungee server with the ip 127.0.0.3 and port 25565 or 25566 and connect.
echo.
set /p backtomm5=Type in 69 to go back to the menu:
if %backtomm5%==69 goto bypasses

:premsrwbypass
cls
echo.
echo Create a offline bungeecord server with the ip of the server and with the right port.
echo Then use Dymeth or any other client, enter the name of the premium and uncheck the premium UUID option.
echo Simply join and it will work. To perform this again, restart your pc and go for it.
echo.
set /p backtomm6=Type in 69 to go back to the menu:
if %backtomm6%==69 goto bypasses

:antivpnbypass
cls
echo.
echo Create a local bungeecord server with the ip of the server or 127.0.0.1.
echo Simply connect to the server and you should bypass it.
echo Note that this doesn't always work because it depends on the plugin/configuration.
echo.
set /p backtomm7=Type in 69 to go back to the menu:
if %backtomm7%==69 goto bypasses

:authmebypass
cls
echo.
echo Join with the owners nick (or any operator nick) and try these commands:
echo /send, /server, /lobby, /lpb, /bp, /plugman, etc - if it works join and grief.
echo.
set /p backtomm8=Type in 69 to go back to the menu:
if %backtomm8%==69 goto bypasses

:appbypass
cls
echo.
echo This is actually very simple, most of the servers use some sort of a plugin management plugin.
echo Such as: PlugMan, PluginManager etc. Simply try the commands: /plugman or /pm.
echo.
set /p backtomm9=Type in 69 to go back to the menu.
if %backtomm9%==69 goto bypasses

:bungeecr
cls
cd bungee
start cmd /k java -jar WaterFall.jar
echo.
echo The server is up, access it by using the ip 0.0.0.0:33330.
echo It is a local bungee, to change the port or ip change it in the config.yml.(credits to wrrulos)
echo.
set /p backtomm10=Type in 69 to go back to the menu:
if %backtomm10%==69 goto mainmenu
if %backtomm10%==69 cd ../

:dbsearcher
cls
echo.
set /p nickname=Enter the nick:
if %nickname%==69 goto mainmenu
cd dbsearcher
find /I "%nickname%" database1.txt > found_password.txt
find /I "%nickname%" database2.txt > found_password.txt
find /I "%nickname%" database3.txt > found_password.txt
echo.
cls
type found_password.txt
echo.
cd ../
echo 1.Search for another nick
echo 2.Go back to the main menu
echo.
set /P backtommoe=Select your option:
if %backtommoe%==1 goto dbsearcher
if %backtommoe%==2 goto mainmenu

:ipgeolookup
cls
echo.
set /p ipfl=Enter the IP:
if %ipfl%==69 goto mainmenu
cls
echo.
curl -s https://ipinfo.io/%ipfl%
echo.
echo 1.Lookup another IP
echo 2.Go back to the main menu
echo.
set /p backtomm15=Select your option:
if %backtomm15%==1 goto ipgeolookup
if %backtomm15%==2 goto mainmenu

:clientslist
cls
echo.
echo This is the clients list where you can download them.
echo The clients have everything you need to start griefing.
echo.
echo 1.Dymeth Client
echo 2.Skill Client
echo 3.Jessica Client
echo 4.Parrot client
echo 5.Invalid Client
echo 6.DarkGriefers Client
echo 7.God Client
echo 8.Agony Client
echo 9.Polo Client
echo 10.Skuxx Client
echo 11.Main Menu
echo.
set /P chosop=Select your option:
if %chosop%==1 start http://www.mediafire.com/file/k3cm6m3dv13ez8u/%255BCheatMine%255D_Dymeth_Client_2.0.rar/file
if %chosop%==2 start https://www.mediafire.com/file/asci91jnst782ls/SkillClient1.8-b8.1.zip/file
if %chosop%==3 start http://www.mediafire.com/file/28b09c4ooukq20g/Jessica_1.8_.rar/file 
if %chosop%==4 start https://uloz.to/file/WWSN0Q4q85Wt/parrot-rar
if %chosop%==5 start https://www.mediafire.com/file/tyraebav2daa95h/Invalid.rar/file
if %chosop%==6 start https://github.com/ItzCrackPvP/DarkGriefer-1.8.8/archive/refs/heads/main.zip
if %chosop%==7 start https://github.com/VortexHFM/God-Client/releases/download/God-Client/God.Client.ZIP
if %chosop%==8 start https://github.com/VortexHFM/Agony-Client/releases/download/Agony-Client/Agony.rar
if %chosop%==9 start https://www.mediafire.com/file/o8hwjpa2bs9170y/PoloClient.rar/file
if %chosop%==10 start https://github.com/slowcheet4h/Skuxx-1.6/archive/refs/heads/master.zip
if %chosop%==11 goto mainmenu
goto clientslist