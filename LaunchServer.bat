@ECHO OFF

:: When setting the memory below make sure to include the amount of ram letter. M = MB, G = GB. Don't use 1GB for example, it's 1G ::

:: This is allocated memory ::
set mem=4G

:: Don't edit past this point ::
ECHO Server is starting...

java -server -Xmx%mem% -XX:+UseG1GC -Xms3G -Dsun.rmi.dgc.server.gcInterval=2147483646 -XX:+UnlockExperimentalVMOptions -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M -Dfml.queryResult=confirm -Duser.language=en -jar forge-1.7.10-10.13.4.1614-1.7.10-universal.jar nogui

PAUSE
