@echo on
cd C:\Sysmon\
@powershell Invoke-WebRequest -Uri "hhttps://raw.githubusercontent.com/itsign-cybersecurity/sysmon-config/main/sysmonconfig-export.xml" -OutFile "C:\Sysmon\sysmonconfig-export.xml"
timeout 30
sysmon64 -c sysmonconfig-export.xml
exit
