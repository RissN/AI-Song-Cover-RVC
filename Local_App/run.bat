@echo off
title Local AICoverGen WebUI
echo ===================================================
echo   Starting Local AICoverGen (RVC)...
echo ===================================================
echo.

if not exist venv (
    echo [ERROR] Virtual Environment not found. 
    echo Please run 'setup.bat' first!
    pause
    exit /b
)

call venv\Scripts\activate.bat
echo Opening WebUI...
python src/webui.py

pause
