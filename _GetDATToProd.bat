rem Script to copy DAT files from tester to Files folder of the Terminals
rem To be used after training of the robot using Strategy Tester

@echo off
setlocal enabledelayedexpansion

:: files generated in the tester\files folder
set SOURCE_DIR="D:\FxPro - Terminal3\tester\files"
:: files copied to the sandbox folder MQL4\Files
set DEST_DIR1="D:\FxPro - Terminal1\MQL4\Files"
set DEST_DIR2="D:\FxPro - Terminal3\MQL4\Files"

rem only copy *.dat files
ROBOCOPY %SOURCE_DIR% %DEST_DIR1% *.dat
ROBOCOPY %SOURCE_DIR% %DEST_DIR2% *.dat

:: delete data in the file OrdersResultsT1.csv related to the updated systems, also disable sytems in T3
"C:\Program Files\R\R-3.5.1\bin\R.exe" CMD BATCH "D:\TradingRepos\R_tradecontrol\_OT\delete_data_of_re_trained_bots.R"