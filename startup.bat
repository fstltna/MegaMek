@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  startup startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0


@rem Add default JVM options here. You can also use JAVA_OPTS and STARTUP_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS="-Xmx1024m"

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\MegaMek.jar;%APP_HOME%\lib\jaxb-runtime-2.3.2.jar;%APP_HOME%\lib\stax-ex-1.8.1.jar;%APP_HOME%\lib\jakarta.xml.bind-api-2.3.2.jar;%APP_HOME%\lib\xstream-1.4.14.jar;%APP_HOME%\lib\freemarker-2.3.28.jar;%APP_HOME%\lib\log4j-1.2.17.jar;%APP_HOME%\lib\commons-text-1.8.jar;%APP_HOME%\lib\flatlaf-0.26.jar;%APP_HOME%\lib\SerialKiller-master-SNAPSHOT.jar;%APP_HOME%\lib\istack-commons-runtime-3.0.8.jar;%APP_HOME%\lib\jakarta.activation-api-1.2.1.jar;%APP_HOME%\lib\xmlpull-1.1.3.1.jar;%APP_HOME%\lib\xpp3_min-1.1.4c.jar;%APP_HOME%\lib\commons-lang3-3.9.jar;%APP_HOME%\lib\commons-collections-3.2.2.jar;%APP_HOME%\lib\commons-configuration-1.10.jar;%APP_HOME%\lib\commons-lang-2.6.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\txw2-2.3.2.jar;%APP_HOME%\lib\FastInfoset-1.2.16.jar

@rem Execute startup
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %STARTUP_OPTS%  -classpath "%CLASSPATH%" megamek.MegaMek %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable STARTUP_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%STARTUP_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
