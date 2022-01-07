@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
net config server /srvcomment:"Vaimpier Ritik" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f /v Wallpaper /t REG_SZ /d D:\a\wallpaper.bat
net user VaimpierRitik @Ritik /add >nul
net localgroup administrators VaimpierRitik /add >nul
net user VaimpierRitik /active:yes >nul
net user installer /delete
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant administrator:F >nul
ICACLS C:\Windows\installer /grant administrator:F >nul
echo ngrok install !, rebuilding the rdp
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "connecting the ngrok tunnel,  NGROK_AUTH_TOKEN  Settings> Secrets> Repository secret. you can go and see dashboard in : https://dashboard.ngrok.com/status/tunnels "
echo Username: VaimpierRitik
echo Password: @Ritik
echo Hello bro please login now ( mstsc ) 
ping -n 10 127.0.0.1 >nul
