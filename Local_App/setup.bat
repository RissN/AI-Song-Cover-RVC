@echo off
title Setup Local AICoverGen
echo ===================================================
echo   Local AICoverGen (RVC) Installation by Antigravity
echo ===================================================
echo.

:: Check Python installation
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Python not found. Make sure Python 3.9 or 3.10 is installed and added to PATH.
    pause
    exit /b
)

echo [1/4] Creating Virtual Environment (venv)...
if not exist venv (
    python -m venv venv
)

echo [2/4] Activating Virtual Environment...
call venv\Scripts\activate.bat

echo [3/4] Installing Dependencies (This may take a while, please wait)...
python -m pip install "pip<24.1" setuptools wheel
pip install -r requirements.txt

echo [4/4] Downloading Default Models (MDXNet ^& Hubert)...
python src/download_models.py

echo.
echo ===================================================
echo   Installation Complete! 
echo   You can now run 'run.bat'
echo ===================================================
pause
