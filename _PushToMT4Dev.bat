rem Script to Deploy files from Version Control repository to Development Terminal
rem Use in case some content needs to be replaced (reverted from Version Control History)

@echo off
setlocal enabledelayedexpansion

:: Source Directory where Version Control Repository is located
set SOURCE_DIR="D:\TradingRepos\FALCON_A"
:: Destination Directory where Expert Advisor is located
set DEST_DIR="D:\FxPro - Terminal2\MQL4\Experts\FALCON_A"

ROBOCOPY %SOURCE_DIR% %DEST_DIR% Falcon_A.mq4

