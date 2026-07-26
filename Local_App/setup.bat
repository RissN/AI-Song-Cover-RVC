@echo off
title Setup Local AICoverGen
echo ===================================================
echo   Instalasi Local AICoverGen (RVC) by Antigravity
echo ===================================================
echo.

:: Cek instalasi Python
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Python tidak ditemukan. Pastikan Python 3.9 atau 3.10 sudah terinstall dan ditambahkan ke PATH.
    pause
    exit /b
)

echo [1/4] Membuat Virtual Environment (venv)...
if not exist venv (
    python -m venv venv
)

echo [2/4] Mengaktifkan Virtual Environment...
call venv\Scripts\activate.bat

echo [3/4] Menginstal Dependencies (Bisa memakan waktu lama, mohon tunggu)...
python -m pip install "pip<24.1" setuptools wheel
pip install -r requirements.txt

echo [4/4] Mendownload Model Bawaan (MDXNet ^& Hubert)...
python src/download_models.py

echo.
echo ===================================================
echo   Instalasi Selesai! 
echo   Sekarang Anda bisa menjalankan 'run.bat'
echo ===================================================
pause
