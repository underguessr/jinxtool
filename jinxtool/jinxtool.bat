@echo off
:: Discord: jinx | Discord Server: https://discord.gg////// | If you're gonna use any part of the code give me credit !
title grieftool by jinx - https://discord.gg//////

IF NOT EXIST bungee echo Missing Bungee folder. > missing.txt
cd dbsearcher/ && IF NOT EXIST database1.txt echo Missing DB1 file. > missing1.txt
IF NOT EXIST database2.txt echo Missing DB2 file. > missing1.txt
IF NOT EXIST database3.txt echo Missing DB3 file. > missing1.txt && move missing1.txt ../ > nul
cd ../ && cd scanning/ && IF NOT EXIST qubo.jar echo Missing Qubo file. > missing2.txt && move missing2.txt ../ && cd ../ > nul
for %%R in (missing.txt) do if not %%~zR lss 1 goto notempty1 ELSE goto xlo
:xlo
for %%R in (missing1.txt) do if not %%~zR lss 1 goto notempty1 ELSE GOTO xlo1
:xlo1
for %%R in (missing2.txt) do if not %%~zR lss 1 goto notempty1 ELSE GOTO mainmenu

:mainmenu
color 3
title grieftool by jinx - https://discord.gg////////
cls
echo.
echo.
echo       **   **   ** *      **   **       **      *************       **          **      **
echo       **   **   ** **     **    **     **             **          **  **      **  **    **
echo       **   **   **  **    **     **   **              **         **    **    **    **   **
echo       **   **   **   **   **      ** **               **        **      **  **      **  **
echo       **   **   **    **  **       **                 **         **    **    **    **   **
echo   **  **   **   **     ** **     **  **               **          **  **      **  **    **
echo   ******   **   **      ****    **    **              **            **          **      *******
echo.
echo  Jinx Tool made by jinx on discord - Discord Server: https://discord.gg////////////// - Enjoy!
echo **************************************************************************************************
echo.
echo.
echo.
timeout /t 2 /NOBREAK > nul
cls
echo.
echo **********************************
echo  ******[~] 1.Domain Lookup
echo  ******[~] 2.Grief Commands
echo  ******[~] 3.Port Scanner
echo  ******[~] 4.Player Lookup
echo  ******[~] 5.IpGeoLookup
echo  ******[~] 6.Bypasses
echo  ******[~] 7.Bungee Create
echo  ******[~] 8.DB Searcher
echo  ******[~] 9.Server Lookup
echo  ******[~] 10.Clients List
echo  ******[~] 11.Server Finder
echo  ******[~] 12.Subdomain Scanner
echo **********************************
echo.
set /p okay=root$jinxtool-[~]:
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
if %okay%==11 goto serverfinder
if %okay%==12 goto subdscanner
goto noob

:domainlookup
cls
echo.
echo Enter the domain in (example youtube.com).
echo Type in 69 to go back to the menu.
echo.
set /p domain=Type the domain in:
cls
curl -s https://api.hackertarget.com/dnslookup/?q=%domain%
if %domain%==69 goto mainmenu
echo.
echo.
echo 1.Lookup another domain
echo 2.Go back to the main menu
echo.
set /p backtomm2=root$jinxtool-[~]:
if %backtomm2%==1 goto domainlookup
if %backtomm2%==2 goto mainmenu

:griefcmds
cls
echo LuckPerms * (for lpb use lpb user etc..)
echo /lp user jinx permission set *
echo /lp user jinx parent set owner
echo ==============================================
echo PermissionsEx *
echo /pex user jinx add *
echo /pex user jinx group set Owner
echo ==============================================
echo GroupManager *
echo /manuaddp jinx *
echo /manuadd jinx Owner
echo ==============================================
echo zPermissions *
echo /permissions player jinx set *
echo /permissions player jinx setgroup Owner
echo ==============================================
echo Powerful Perms *
echo /pp jinx add *
echo /pp jinx setrank Owner
echo ==============================================
echo UltraPermissions *
echo /upc addpermission jinx *
echo /upc setgroup jinx Owner 
echo ==============================================
echo BungeePerms *
echo /bp user jinx addgroup Owner
echo /bp user jinx addperm *
echo =============================================
echo Commandblock Command
echo /minecraft:execute jinx ~ ~ ~ minecraft:op jinx
echo ==============================================
echo WorldEdit Grief Command
echo /minecraft:fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air
echo ==============================================
echo.
echo root$jinxtool-[~]:
pause>nul
goto mainmenu

:portscanner
cls
echo.
echo 1.Qubo Scan ( For smaller port ranges )
echo 2.Nmap Scan ( For bigger port ranges )
echo 3.Main Menu
echo.
set /p choosemode=root$jinxtool-[~]:
if %choosemode%==1 goto quboscan
if %choosemode%==2 goto nmapscan
if %choosemode%==3 goto mainmenu
cls

:quboscan
cd files/scanning/ > nul
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
set /p backtomm3=root$jinxtool-[~]:
if %backtomm3%==1 goto quboscan
if %backtomm3%==2 goto mainmenu && cd ../../

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
set /p backtommns=root$jinxtool-[~]:
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
set /p backtomm14=root$jinxtool-[~]:
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
set /p backtomm4=root$jinxtool-[~]:
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
set /p bypasses=root$jinxtool-[~]:
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
echo Use Dymeth Client or other (you can download one of the clients in my tool)
echo Enter the owner's nick and for your fake ip simply type in 1.1.1.1, 0.0.0.0 or 127.0.0.1
echo Or create a local bungee server with the ip 127.0.0.3 and port 25565 or 25566 and connect.
echo.
echo root$jinxtool-[~]:
pause>nul
goto bypasses

:premsrwbypass
cls
echo.
echo Create a offline bungeecord server with the ip of the server and with the right port.
echo Then use Dymeth or any other client, enter the name of the premium and uncheck the premium UUID option.
echo Simply join and it will work. To perform this again, restart your pc and go for it.
echo.
echo root$jinxtool-[~]:
pause>nul
goto bypasses

:antivpnbypass
cls
echo.
echo Create a local bungeecord server with the ip of the server or 127.0.0.1.
echo Simply connect to the server and you should bypass it.
echo Note that this doesn't always work because it depends on the plugin/configuration.
echo.
echo root$jinxtool-[~]:
pause>nul
goto bypasses

:authmebypass
cls
echo.
echo Join with the owners nick (or any operator nick) and try these commands:
echo /send, /server, /lobby, /lpb, /bp, /plugman, etc - if it works join and grief.
echo.
echo root$jinxtool-[~]:
pause>nul
goto bypasses

:appbypass
cls
echo.
echo This is actually very simple, most of the servers use some sort of a plugin management plugin.
echo Such as: PlugMan, PluginManager etc. Simply try the commands: /plugman or /pm.
echo.
echo root$jinxtool-[~]:
pause>nul
goto bypasses

:bungeecr
cd files/bungee/ > nul
cls
start cmd /k java -jar WaterFall.jar
echo.
echo The server is up, access it by using the ip 0.0.0.0:33330, to change the
echo ip and port, change it manually in the config.yml ( credits to wrullos )
echo.
echo root$jinxtool-[~]:
cd ../
pause>nul
goto mainmenu && cd ../../


:dbsearcher
cd files/dbsearcher/ > nul
cls
echo.
set /p nickname=Enter the nick:
if %nickname%==69 goto mainmenu
cd dbsearcher && del /q found_password.txt > nul
findstr /I "%nickname%" database1.txt > found_password.txt
findstr /I "%nickname%" database2.txt > found_password.txt
findstr /I "%nickname%" database3.txt > found_password.txt
echo.
cls
type found_password.txt
echo.
cd ../
echo 1.Search for another nick
echo 2.Go back to the main menu
echo.
set /p backtommoe=root$jinxtool-[~]:
if %backtommoe%==1 goto dbsearcher
if %backtommoe%==2 goto mainmenu && cd ../../

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
set /p backtomm15=root$jinxtool-[~]:
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
set /p chosop=root$jinxtool-[~]:
if %chosop%==1 start http://www.mediafire.com/file/k3cm6m3dv13ez8u/%255BCheatMine%255D_Dymeth_Client_2.0.rar/file
if %chosop%==2 start https://www.mediafire.com/file/asci91jnst782ls/SkillClient1.8-b8.1.zip/file
if %chosop%==3 start http://www.mediafire.com/file/28b09c4ooukq20g/Jessica_1.8_.rar/file 
if %chosop%==4 start https://uloz.to/file/WWSN0Q4q85Wt/parrot-rar
if %chosop%==5 start https://www.mediafire.com/file/tyraebav2daa95h/Invalid.rar/file
if %chosop%==6 start https://github.com/ItzCrackPvP/DarkGriefer-1.8.8/archive/refs/heads/main.zip
if %chosop%==7 start https://github.com/VortexHFM/God-Client/releases/download/God-Client/God.Client.ZIP
if %chosop%==8 start https://github.com/VortexHFM/Agony-Client/releases/download/Agony-Client/Agony.rar
if %chosop%==9 start https://anonfiles.com/72oczf49yb/PoloClient_rar
if %chosop%==10 start https://github.com/slowcheet4h/Skuxx-1.6/archive/refs/heads/master.zip
if %chosop%==11 goto mainmenu
goto clientslist

:serverfinder
cls
echo.
echo This is the server finder where you get a server.
echo To get a server simply type in a number (1-100).
echo.
set /p choosenum=Type in your number:
cls
echo.
if %choosenum%==1 echo mc.opblocks.net
if %choosenum%==2 echo prisonfun.net
if %choosenum%==3 echo come.survivewith.us
if %choosenum%==4 echo topgd.pika.host
if %choosenum%==5 echo topgd.jartex.fun
if %choosenum%==6 echo epic.join-ml.com
if %choosenum%==7 echo twerion.net
if %choosenum%==8 echo play.kings-craft.com
if %choosenum%==9 echo play.minemalia.com
if %choosenum%==10 echo top.ultimismc.com
if %choosenum%==11 echo play.ccnetmc.com
if %choosenum%==12 echo sky-network.eu
if %choosenum%==13 echo arefy.net
if %choosenum%==14 echo mc.cosmicmc.net
if %choosenum%==15 echo jogar.austv.net
if %choosenum%==16 echo play.lotusmc.xyz
if %choosenum%==17 echo mc.ultranetwork.net
if %choosenum%==18 echo mobcraft.org
if %choosenum%==19 echo sedbois.club
if %choosenum%==20 echo play.sentinelcraft.net
if %choosenum%==21 echo mc.forgotsmp.fun
if %choosenum%==22 echo play.balkaniacraft.com
if %choosenum%==23 echo play.immortalrealms.co
if %choosenum%==24 echo play.visioncraft.xyz
if %choosenum%==25 echo play.elationmc.net
if %choosenum%==26 echo play.elationmc.net
if %choosenum%==27 echo minetraveler.net
if %choosenum%==28 echo play.ultraic.space
if %choosenum%==29 echo blackmagiccraft.nl
if %choosenum%==30 echo play.nightrealm.ga
if %choosenum%==31 echo play.projectice.gg
if %choosenum%==32 echo play.rodion-network.com
if %choosenum%==33 echo mc.clubsumo.net
if %choosenum%==34 echo play.ageofelysian.com
if %choosenum%==35 echo mc.craftmine.co.uk
if %choosenum%==36 echo play.alonefield.xyz
if %choosenum%==37 echo play.ragnarockmc.in
if %choosenum%==38 echo armamc.com
if %choosenum%==39 echo play.ccnetmc.com
if %choosenum%==40 echo sentouki.net
if %choosenum%==41 echo play.mognetwork.in
if %choosenum%==42 echo play.z-mc.net
if %choosenum%==43 echo play.minecity.net
if %choosenum%==44 echo mc.craftmc.pro
if %choosenum%==45 echo play.kchscraft.net
if %choosenum%==46 echo mc.creeplands.org
if %choosenum%==47 echo jogar.austv.net
if %choosenum%==48 echo play.minejordyn.org
if %choosenum%==49 echo play.tecnius.net
if %choosenum%==50 echo play.cyperlands.net
if %choosenum%==51 echo play.dsgminecraft.net
if %choosenum%==52 echo play.asiacraft.net
if %choosenum%==53 echo stardix.com
if %choosenum%==54 echo play.intolnetwork.tk
if %choosenum%==55 echo sedbois.club
if %choosenum%==56 echo play.bumblecraft.net
if %choosenum%==57 echo juega.minebox.es
if %choosenum%==58 echo play.pokegalaxia.com
if %choosenum%==59 echo play.extremecraft.net
if %choosenum%==60 echo play.havoc.games
if %choosenum%==61 echo topg.hylexmc.net
if %choosenum%==62 echo mc.pokerevolution.es
if %choosenum%==63 echo mc.durcraft.net
if %choosenum%==64 echo lumina.gg
if %choosenum%==65 echo mc.reacraft.es:25576
if %choosenum%==66 echo mc.slimecraft.es
if %choosenum%==67 echo stelarmc.club:25565
if %choosenum%==68 echo mc.pokemasters.es:25565
if %choosenum%==69 echo SurvivalESP.minecraft.casa:25736
if %choosenum%==70 echo landacraft.es
if %choosenum%==71 echo play.mundopixelnet.com
if %choosenum%==72 echo play.apaneros.com:25565
if %choosenum%==73 echo mc.akarcraft.es
if %choosenum%==74 echo servidor.erentia.xyz
if %choosenum%==75 echo buddycraft.es
if %choosenum%==76 echo syderalmc.vultam.host:25569
if %choosenum%==77 echo watermc.gg:25565
if %choosenum%==78 echo shibacraft.net:25565
if %choosenum%==79 echo minewool.com
if %choosenum%==80 echo mc.comugamers.com:25565
if %choosenum%==81 echo mc.survivaldub.es
if %choosenum%==82 echo deathzone.net:25565
if %choosenum%==83 echo play.skycraft.com
if %choosenum%==84 echo SkyCraft.es
if %choosenum%==85 echo mc.hydracraft.es
if %choosenum%==86 echo mc.orecraft.club:25629
if %choosenum%==87 echo mc.hypermine.net
if %choosenum%==88 echo play.zonecraft.es
if %choosenum%==89 echo play.mavibugday.com
if %choosenum%==90 echo saloon.network
if %choosenum%==91 echo muzcraft.com
if %choosenum%==92 echo mc.projects.gg
if %choosenum%==93 echo play.capitalmc.net
if %choosenum%==94 echo play.riberia.net
if %choosenum%==95 echo oyna.dunyamc.com
if %choosenum%==96 echo play.adrenocraft.com
if %choosenum%==97 echo play.aesirmc.com
if %choosenum%==98 echo play.magicrise.pw
if %choosenum%==99 echo play.dinamikcraft.tk
if %choosenum%==100 echo play.gevoid.com
echo.
echo root$jinxtool-[~]:
pause>nul
cls
echo.
echo 1.Get another server
echo 2.Go back to the main menu
echo.
set /p choosenoioo=root$jinxtool-[~]:
if %choosenoioo%==1 goto serverfinder
if %choosenoioo%==2 goto mainmenu

:subdscanner
cls
echo.
echo This is the subdomain scanner where
echo you can scan domains for subdomains.
echo.
set /p glue=Enter the domain:
cls
echo.
echo Scanning...
echo.
PING -n 5 .%glue% | FIND "TTL" > nul
if errorlevel 1 (
   goto x10
)
echo Subdomain found: dev.%glue% && ping dev.%glue% | for /f "skip=3 tokens=*" %%a in ('findstr Reply') do @echo %%a && echo. && goto x10
:x10
PING -n 5 test.%glue% | FIND "TTL" > nul
if errorlevel 1 (
   goto x11
)
echo Subdomain found: test.%glue% && ping test.%glue% | for /f "skip=3 tokens=*" %%a in ('findstr Reply') do @echo %%a && echo. && goto x11
:x11
PING -n 5 ovh.%glue% | FIND "TTL" > nul
if errorlevel 1 (
   goto x12
)
echo Subdomain found: ovh.%glue% && ping ovh.%glue% | for /f "skip=3 tokens=*" %%a in ('findstr Reply') do @echo %%a && echo. && goto x12
:x12
PING -n 5 staff.%glue% | FIND "TTL" > nul
if errorlevel 1 (
   goto x13
)
echo Subdomain found: staff.%glue% && ping staff.%glue% | for /f "skip=3 tokens=*" %%a in ('findstr Reply') do @echo %%a && echo. && goto x13
:x13
PING -n 5 jogar.%glue% | FIND "TTL" > nul
if errorlevel 0 (
   goto x14
)
echo Subdomain found: jogar.%glue% && ping jogar.%glue% | for /f "skip=3 tokens=*" %%a in ('findstr Reply') do @echo %%a && echo. && goto x14
:x14
PING -n 5 play.%glue% | FIND "TTL" > nul
if errorlevel 1 (
   goto x15
)
echo Subdomain found: play.%glue% && ping play.%glue% | for /f "skip=3 tokens=*" %%a in ('findstr Reply') do @echo %%a && echo. && goto x15
:x15
PING -n 5 mc.%glue% | FIND "TTL" > nul
if errorlevel 1 (
   goto x16
)
echo Subdomain found: mc.%glue% && ping mc.%glue% | for /f "skip=3 tokens=*" %%a in ('findstr Reply') do @echo %%a && echo. && goto x16
:x16
PING -n 5 www.%glue% | FIND "TTL" > nul
if errorlevel 1 (
   goto x17
)
echo Subdomain found: www.%glue% && ping www.%glue% | for /f "skip=3 tokens=*" %%a in ('findstr Reply') do @echo %%a && echo. && goto x17
:x17
PING -n 5 build.%glue% | FIND "TTL" > nul
if errorlevel 1 (
   goto x18
)
echo Subdomain found: build.%glue% && ping build.%glue% | for /f "skip=3 tokens=*" %%a in ('findstr Reply') do @echo %%a && echo. && goto x18
:x18
PING -n 5 store.%glue% | FIND "TTL" > nul
if errorlevel 1 (
   goto x19
)
echo Subdomain found: store.%glue% && ping store.%glue% | for /f "skip=3 tokens=*" %%a in ('findstr Reply') do @echo %%a && echo. && goto x19
:x19
PING -n 5 na.%glue% | FIND "TTL" > nul
if errorlevel 1 (
   goto x20
)
echo Subdomain found: na.%glue% && ping na.%glue% | for /f "skip=3 tokens=*" %%a in ('findstr Reply') do @echo %%a && echo. && goto x20
:x20
PING -n 5 as.%glue% | FIND "TTL" > nul
if errorlevel 1 (
   goto x21
)
echo Subdomain found: as.%glue% && ping as.%glue% | for /f "skip=3 tokens=*" %%a in ('findstr Reply') do @echo %%a && echo. && goto x21
:x21
PING -n 5 eu.%glue% | FIND "TTL" > nul
if errorlevel 1 (
   goto x22
)
echo Subdomain found: eu.%glue% && ping eu.%glue% | for /f "skip=3 tokens=*" %%a in ('findstr Reply') do @echo %%a && echo. && goto x22
:x22
PING -n 5 node01.%glue% | FIND "TTL" > nul
if errorlevel 1 (
   goto x23
)
echo Subdomain found: node01.%glue% && ping node01.%glue% | for /f "skip=3 tokens=*" %%a in ('findstr Reply') do @echo %%a && echo. && goto x23
:x23
PING -n 5 node02.%glue% | FIND "TTL" > nul
if errorlevel 1 (
   goto x24
)
echo Subdomain found: node02.%glue% && ping node02.%glue% | for /f "skip=3 tokens=*" %%a in ('findstr Reply') do @echo %%a && echo. && goto x24
:x24
PING -n 5 node03.%glue% | FIND "TTL" > nul
if errorlevel 1 (
   goto x25
)
echo Subdomain found: node03.%glue% && ping node03.%glue% | for /f "skip=3 tokens=*" %%a in ('findstr Reply') do @echo %%a && echo. && goto x25
:x25
PING -n 5 node04.%glue% | FIND "TTL" > nul
if errorlevel 1 (
   goto x26
)
echo Subdomain found: node04.%glue% && ping node04.%glue% | for /f "skip=3 tokens=*" %%a in ('findstr Reply') do @echo %%a && echo. && goto x26
:x26
PING -n 5 node05.%glue% | FIND "TTL" > nul
if errorlevel 1 (
   goto x27
)
echo Subdomain found: node05.%glue% && ping node05.%glue% | for /f "skip=3 tokens=*" %%a in ('findstr Reply') do @echo %%a && echo. && goto x27
:x27
ping -l 100 vote.%glue% > nul
if errorlevel 1 (
   goto x28
)
echo Subdomain found: vote.%glue% && ping vote.%glue% | for /f "skip=3 tokens=*" %%a in ('findstr Reply') do @echo %%a && echo. && goto x28
:x28
PING -n 5 vote1.%glue% | FIND "TTL" > nul
if errorlevel 1 (
   goto x29
)
echo Subdomain found: vote1.%glue% && ping vote1.%glue% | for /f "skip=3 tokens=*" %%a in ('findstr Reply') do @echo %%a && echo. && goto x29
:x29
PING -n 5 vote2.%glue% | FIND "TTL" > nul
if errorlevel 1 (
   goto x30
)
echo Subdomain found: vote2.%glue% && ping vote2.%glue% | for /f "skip=3 tokens=*" %%a in ('findstr Reply') do @echo %%a && echo. && goto x30
:x30
PING -n 5 vote3.%glue% | FIND "TTL" > nul
if errorlevel 1 (
   goto x31
)
echo Subdomain found: vote3.%glue% && ping vote3.%glue% | for /f "skip=3 tokens=*" %%a in ('findstr Reply') do @echo %%a && echo. && goto x31
:x31
PING -n 5 vote4.%glue% | FIND "TTL" > nul
if errorlevel 1 (
   goto x32
)
echo Subdomain found: vote4.%glue% && ping vote4.%glue% | for /f "skip=3 tokens=*" %%a in ('findstr Reply') do @echo %%a && echo. && goto x32
:x32
PING -n 5 vote5.%glue% | FIND "TTL" > nul
if errorlevel 1 (
   goto x33
)
echo Subdomain found: vote5.%glue% && ping vote5.%glue% | for /f "skip=3 tokens=*" %%a in ('findstr Reply') do @echo %%a && echo. && goto x33
:x33
echo.
echo Scan finished.
echo Press enter to continue.
pause>nul
cls
echo.
echo 1.Scan another domain
echo 2.Go back to the main menu
echo.
set /p nbo=root$jinxtool-[~]:
if %nbo%==1 goto subdscanner
if %nbo%==2 goto mainmenu
goto noob

:notempty1
timeout /T 1 /NOBREAK > nul
cls
echo.
type missing.txt
type missing1.txt
type missing2.txt
echo.
echo Press enter to continue:
pause>nul
del missing.txt > nul
del missing1.txt > nul
del missing2.txt > nul
cls
goto mainmenu

:noob
cls
echo.
echo That option doesn't exist.
echo Try a different number :D.
echo.
echo root$jinxtool-[~]:
pause>nul
goto mainmenu
