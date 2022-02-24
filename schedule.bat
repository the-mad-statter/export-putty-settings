@echo off
if "%1"=="runas" (
  cd %~dp0
  SCHTASKS /CREATE /SC DAILY /TN "themadstatter\export_putty_settings" /TR "%~dp0export_putty_settings.bat" /ST 03:55 /RU schuelke /RL HIGHEST
  pause
  exit
) else (
  powershell Start -File "cmd '/K %~f0 runas'" -Verb RunAs
)
