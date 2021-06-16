@echo off

::=============================================================================
:: TEST strLen
::=============================================================================
set "test=Hello world!"
:: Echo the length of TEST
call ../utils :_strLen test

:: Store the length of TEST in LEN
call ../utils :_strLen test len
echo len=%len%
::=============================================================================

exit /b