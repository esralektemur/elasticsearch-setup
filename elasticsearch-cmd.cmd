@echo off

for %%I in ("%~dp0..") do set ES_HOME=%%~dpfI

set JAVA_HOME=%ES_HOME%\jre
set PATH=%ES_HOME%\bin;%JAVA_HOME%\bin;%PATH%

TITLE Elasticsearch @@ES_VERSION@@ Command Prompt

echo From here you can run administrative commands.
echo.
echo Stop the service:
echo.
echo     net stop elasticsearch
echo.
echo Start the service:
echo.
echo     net start elasticsearch
echo.
echo View installed plugins:
echo.
echo     plugin list
echo.
echo Install a plugin, e.g. HQ and head:
echo.
echo     plugin install royrusso/elasticsearch-HQ
echo     plugin install mobz/elasticsearch-head
echo.

cmd /k "cd %ES_HOME%"
