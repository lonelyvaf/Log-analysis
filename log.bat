@echo off
echo �뽫��־���ڵ�ǰĿ¼��
set /p log=��������Ҫ��������־:
set dir=%cd%
"C:\Program Files\Log Parser 2.2"\LogParser.exe -i:IISW3C -o:DATAGRID "SELECT date,time,c-ip,cs-method,s-port,cs-uri-stem,cs-uri-query,sc-status,cs(User-Agent),cs-version,sc-win32-status,sc-bytes,cs-bytes,time-taken FROM %log%"
pause