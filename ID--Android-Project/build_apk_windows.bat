
@echo off
echo ==========================================
echo Web2APK - Automated Build Script
echo ==========================================
echo.
echo This script will attempt to build the APK using your local Gradle installation.
echo.

call gradle -v >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Gradle is not found in your PATH.
    echo.
    echo OPTION 1: Install Gradle (https://gradle.org/install/)
    echo OPTION 2: Open this folder in "Android Studio" (Recommended)
    echo           Android Studio will handle everything automatically.
    echo.
    pause
    exit /b
)

echo [INFO] Gradle found. Building Debug APK...
call gradle assembleDebug

if exist "app\build\outputs\apk\debug\app-debug.apk" (
    echo.
    echo [SUCCESS] APK Generated Successfully!
    echo Location: app\build\outputs\apk\debug\app-debug.apk
    echo.
    echo You can now transfer this file to your phone.
) else (
    echo.
    echo [FAILED] Build failed. Please check the error messages above.
)
pause
