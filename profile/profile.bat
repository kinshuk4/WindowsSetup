@echo off
REM JAVA_8_HOME:%ProgramFiles%\Java\jdk1.8.0_152\bin
REM JAVA_9_HOME:%ProgramFiles%\Java\jdk-9.0.1\bin
REM JAVA_HOME:%JAVA_8_HOME%

REM https://stackoverflow.com/questions/47469310/switch-jdk-version-in-windows-10-cmd
REM https://stackoverflow.com/questions/21606419/set-windows-environment-variables-with-a-batch-file
REM https://stackoverflow.com/questions/7846560/how-concatenate-two-variables-in-batch-script
REM Needed for variable concatenation
setlocal EnableDelayedExpansion

set HOMEDRIVE=C:
set PROGRAM_FILES=%HOMEDRIVE%\Program Files
echo %PROGRAM_FILES%
:: %system32% ??
:: No spaces in paths
:: Program Files > ProgramFiles
:: cls = clear screen
:: CMD reads the system environment variables when it starts. To re-read those variables you need to restart CMD

 
set JAVA_8_HOME=%PROGRAM_FILES%\Java\jdk1.8.0_201



:: Switch JDK version
DOSKEY java8=SET PATH=%JAVA_8_HOME%;%PATH%;
DOSKEY java9=SET PATH=%JAVA_9_HOME%;%PATH%
DOSKEY java10=SET PATH=%JAVA_10_HOME%;%PATH%
DOSKEY openjdk8=SET PATH=%JAVA_8_HOME%;%PATH%;
