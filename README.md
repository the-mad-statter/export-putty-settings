# export-putty-settings

Automatable batch file to export Putty settings from the registry

The project is structured to be scheduled with Windows Task Manager. The files 
`schedule.bat` and `unschedule.bat` will schedule and unschedule the task.

# install

1. edit `schedule.bat` to reflect the desired user account.
2. edit `export_putty_settings.bat` to reflect desired output location.
3. run `schedule.bat` to register the task with task manager.
