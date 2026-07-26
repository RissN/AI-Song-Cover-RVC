@echo off
title Local AICoverGen WebUI
echo ===================================================
echo   Memulai Local AICoverGen (RVC)...
echo ===================================================
echo.

if not exist venv (
    echo [ERROR] Virtual Environment tidak ditemukan. 
    echo Harap jalankan 'setup.bat' terlebih dahulu!
    pause
    exit /b
)

call venv\Scripts\activate.bat
echo Membuka WebUI...
python src/webui.py

pause
