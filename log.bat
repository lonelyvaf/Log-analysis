@echo off
echo 请将日志放在当前目录！
set /p log=请输入需要分析的日志:
set dir=%cd%
"C:\Program Files\Log Parser 2.2"\LogParser.exe -i:IISW3C -o:DATAGRID "SELECT date,time,c-ip,cs-method,s-port,cs-uri-stem,cs-uri-query,sc-status,cs(User-Agent),cs-version,sc-win32-status,sc-bytes,cs-bytes,time-taken FROM %log%"
pause