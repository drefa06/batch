@echo OFF
Title TEST LOGGER
REM # usage:
REM # test_logger.bat <log file name>

echo START TEST LOGGER

set REPLOG=..\log

REM # Set log and loglevel=ERROR
echo TEST1: loglevel=ERROR
Call ..\logger.bat :_setLog ERROR %~n0 %1.1

Call :_log TITLE1 "This is a TITLE1"
Call :_log TITLE2 "This is a TITLE2"
Call :_log TITLE3 "This is a TITLE3"
Call :_log ERROR "This is a ERROR message"
Call :_log WARNING "This is a WARNING message"
Call :_log INFO "This is a INFO message"
Call :_log DEBUG "This is a DEBUG message"
Call :_log SUCCESS "This is a SUCCESS message"
Call :_log QUESTION "This is a QUESTION"
Call :_log WRONG "This is a WRONG type"

REM # Set log and loglevel=WARNING
echo TEST2: loglevel=WARNING
Call ..\logger.bat :_setLog WARNING %~n0 %1.2

Call :_log TITLE1 "This is a TITLE1"
Call :_log TITLE2 "This is a TITLE2"
Call :_log TITLE3 "This is a TITLE3"
Call :_log ERROR "This is a ERROR message"
Call :_log WARNING "This is a WARNING message"
Call :_log INFO "This is a INFO message"
Call :_log DEBUG "This is a DEBUG message"
Call :_log SUCCESS "This is a SUCCESS message"
Call :_log QUESTION "This is a QUESTION"
Call :_log WRONG "This is a WRONG type"

REM # Set log and loglevel=INFO
echo TEST3: loglevel=INFO
Call ..\logger.bat :_setLog INFO %~n0 %1.3

Call :_log TITLE1 "This is a TITLE1"
Call :_log TITLE2 "This is a TITLE2"
Call :_log TITLE3 "This is a TITLE3"
Call :_log ERROR "This is a ERROR message"
Call :_log WARNING "This is a WARNING message"
Call :_log INFO "This is a INFO message"
Call :_log DEBUG "This is a DEBUG message"
Call :_log SUCCESS "This is a SUCCESS message"
Call :_log QUESTION "This is a QUESTION"
Call :_log WRONG "This is a WRONG type"

REM # Set log and loglevel=DEBUG
echo TEST4: loglevel=DEBUG
Call ..\logger.bat :_setLog DEBUG %~n0 %1.4

Call :_log TITLE1 "This is a TITLE1"
Call :_log TITLE2 "This is a TITLE2"
Call :_log TITLE3 "This is a TITLE3"
Call :_log ERROR "This is a ERROR message"
Call :_log WARNING "This is a WARNING message"
Call :_log INFO "This is a INFO message"
Call :_log DEBUG "This is a DEBUG message"
Call :_log SUCCESS "This is a SUCCESS message"
Call :_log QUESTION "This is a QUESTION"
Call :_log WRONG "This is a WRONG type"

REM # Set log and loglevel=WRONG
echo TEST4: loglevel=WRONG
Call ..\logger.bat :_setLog WRONG %~n0 %1.5
if ErrorLevel 1 (
	echo [1m[91m WRONG LOGLEVEL [0m
)
	

REM #----------------------------------------------------------------------------
REM #Wrapper to call the log function where it is (today logger.bat)
:_log
	call ..\logger.bat :_log_wrapper %1 %2 %3
	
	goto :eof