cls
@echo off
echo MAKE SURE TO RUN THE TOOL AS ADMINISTRATOR, OTHERWISE IT WON'T WORK! ( click enter to continue )
pause>nul
cls

echo *
echo NMAP WILL BE INSTALLED TO YOUR DESKTOP WITHIN THE NEXT SEVERAL MINUTES
echo *
timeout /t 3
bitsadmin.exe /transfer "NMAP_DL" https://nmap.org/dist/nmap-7.92-setup.exe C:\Users\%username%\Desktop\jinxtool