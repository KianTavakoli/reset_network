@ECHO OFF
echo Reset DNS
echo.
PAUSE
echo.
ipconfig /flushdns
ipconfig /registerdns
ipconfig /release
ipconfig /renew
netsh winsock reset
echo.
echo DOWN............
ECho.
PAUSE