REM Author: Ryan White
REM Ver. r06

@echo Todays Date is  %DATE:~0,14%  Please have all clients log off @echo off pause REM ~~~~~~~~~~~~~~~ Stopping Server ~~~~~~~~~~~ @echo "Stopping Server"
REM @Echo off
cd "c:\eaglesoft\Shared Files\"
PattersonServerStatus.exe  -stop

REM ~~~  MAKE LOCAL BACKUP ~~~
REM cd "c:\Eaglesoft\"
REM mkdir Backups
REM cd Backups
REM mkdir %date:~0,3%
REM cd  "%Date:~0,3%"
REM mkdir  "%DATE:~4,2%-%DATE:~7,2%-%DATE:~10,4%"
REM xcopy "c:\EagleSoft\Data" c:\eaglesoft\backups\%date:~0,3%\%DATE:~4,2%-%DATE:~7,2%-%DATE:~10,4%\  /s /e /h /z

REM ~~~~~~~~~~~~~ Removable Backup ~~~~~~~~~~~~~~~~~~~~~~ echo off
e:
mkdir Backups
cd Backups
mkdir %date:~0,3%
cd  "%Date:~0,3%"
mkdir  "%DATE:~4,2%-%DATE:~7,2%-%DATE:~10,4%"
xcopy "c:\EagleSoft\Data" e:\Backups\%date:~0,3%\%DATE:~4,2%-%DATE:~7,2%-%DATE:~10,4%\  /s /e /h /z REM ~~~~~~~~ Starting Server ~~~~~~~~~~~~~~

@Echo BACKUP COMPLETE STARTING SERVER...
Echo off
c:
cd "c:\eaglesoft\Shared Files"
"PattersonServerStatus.exe" -start
timeout 5
"techaid.exe" startmsngr
@Echo BACKUP COMPLETE, THANK YOU HAVE A GREAT DAY :) TIMEOUT 10
