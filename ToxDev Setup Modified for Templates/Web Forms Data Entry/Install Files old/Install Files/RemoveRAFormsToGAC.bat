@echo This batch file uninstalls the RAForms.DLL used by the Toxikon Report Automation web form
@pause
@echo Ensure that the path to GAUTIL.EXE is correct
@pause
"C:\Program Files\Microsoft SDKs\Windows\v6.0A\Bin\gacutil.exe" /u raforms 