@echo off
chcp 65001 >nul
cd /d "%~dp0"
title Push Audio Splitter to GitHub
echo =======================================================
echo   กำลังเตรียม Push โค้ดขึ้น GitHub:
echo   https://github.com/Cosmo13911/voice_spliter.git
echo =======================================================
echo.

rem ตั้งค่าข้าม SSL Certificate Error ของ Windows Schannel ชั่วคราว
set GIT_CONFIG_NOSYSTEM=1
set GIT_SSL_NO_VERIFY=true

echo กำลังเชื่อมต่อและ Push ไฟล์ขึ้น GitHub...
echo (หากมีหน้าต่างเบราว์เซอร์เด้งขึ้นมา ให้กด "Sign in with your browser" เพื่อยืนยันสิทธิ์)
echo.

git -c http.sslVerify=false -c credential.helper=manager push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo =======================================================
    echo   [SUCCESS] Push สำเร็จเรียบร้อยแล้ว!
    echo   เข้าไปดูได้ที่: https://github.com/Cosmo13911/voice_spliter
    echo =======================================================
) else (
    echo.
    echo =======================================================
    echo   [NOTICE] หากยังไม่ผ่าน สามารถใส่ Personal Access Token
    echo   หรือตรวจสอบสิทธิ์การเข้าถึง repository
    echo =======================================================
)

echo.
pause
