@echo This batch file uninstalls then reinstalls the RAForms.DLL used by the Toxikon Report Automation web form
@pause
@echo Ensure that the path to GAUTIL.EXE is correct
@pause
"C:\Program Files (x86)\Microsoft SDKs\Windows\v7.0A\Bin\gacutil.exe" /u raforms 
"C:\Program Files (x86)\Microsoft SDKs\Windows\v7.0A\Bin\gacutil.exe" /i "C:\Program Files\Common Files\Microsoft Shared\web server extensions\14\TEMPLATE\LAYOUTS\ToxikonDE\bin\raforms.dll"