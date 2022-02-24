@echo off
if "%1"=="runas" (
  cd %~dp0
  SCHTASKS /DELETE /TN "themadstatter\export_putty_settings"
  pause
  exit
) else (
  powershell Start -File "cmd '/K %~f0 runas'" -Verb RunAs
)
