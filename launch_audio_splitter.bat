@echo off
cd /d "%~dp0"
title Audio Splitter - Local Server
echo ============================================
echo   Audio Splitter - เปิดผ่าน Local Server
echo ============================================
echo.

rem ตรวจสอบ Python
python --version >nul 2>&1
if %errorlevel% equ 0 (
    set PYEXE=python
    goto :found
)
py --version >nul 2>&1
if %errorlevel% equ 0 (
    set PYEXE=py
    goto :found
)
python3 --version >nul 2>&1
if %errorlevel% equ 0 (
    set PYEXE=python3
    goto :found
)

echo [ERROR] ไม่พบ Python บนเครื่องนี้
echo.
echo กรุณาดาวน์โหลด Python จาก: https://python.org/downloads
echo (ติ๊ก "Add Python to PATH" ตอนติดตั้งด้วย)
echo.
pause
exit /b 1

:found
echo [OK] พบ Python: %PYEXE%
echo.
echo กำลังเริ่ม local server ที่ http://localhost:8000/
echo.
timeout /t 1 /nobreak >nul
start "" "http://localhost:8000/"
echo กด Ctrl+C เพื่อปิด server เมื่อใช้งานเสร็จ
echo.
%PYEXE% -m http.server 8000
