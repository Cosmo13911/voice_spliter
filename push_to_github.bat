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

git add index.html text.html
git commit -m "Fix iOS Safari/Chrome upload and audio decoding freeze"
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
    echo   [!] หากหน้าต่างยืนยันตัวตนไม่เด้งขึ้นมา
    echo   คุณสามารถใช้ GitHub Personal Access Token (PAT) ได้
    echo =======================================================
    echo.
    echo 1. ไปสร้าง Token ที่: https://github.com/settings/tokens
    echo    (เลือก Generate new token (classic) และติ๊กถูกที่ [repo])
    echo 2. นำ Token (ขึ้นต้นด้วย ghp_...) มาวางด้านล่างนี้
    echo.
    set /p GHP_TOKEN="วาง GitHub Token ของคุณที่นี่ (หรือกด Enter เพื่อข้าม): "
    
    if not "%GHP_TOKEN%"=="" (
        echo.
        echo กำลังเชื่อมต่อด้วย Token...
        git remote set-url origin https://Cosmo13911:%GHP_TOKEN%@github.com/Cosmo13911/voice_spliter.git
        git -c http.sslVerify=false push -u origin main
        if %errorlevel% equ 0 (
            echo.
            echo =======================================================
            echo   [SUCCESS] Push สำเร็จเรียบร้อยแล้ว! บันทึกสิทธิ์ถาวรแล้ว
            echo =======================================================
        ) else (
            echo [ERROR] Token ไม่ถูกต้องหรือไม่มีสิทธิ์เข้าถึง repo
        )
    )
)

echo.
pause
