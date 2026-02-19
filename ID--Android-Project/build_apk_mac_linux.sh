
#!/bin/bash
echo "=========================================="
echo "Web2APK - Automated Build Script"
echo "=========================================="

if ! command -v gradle &> /dev/null
then
    echo "[ERROR] Gradle could not be found."
    echo "Please install Gradle or open this project in Android Studio."
    exit 1
fi

echo "[INFO] Gradle found. Building Debug APK..."
gradle assembleDebug

if [ -f "app/build/outputs/apk/debug/app-debug.apk" ]; then
    echo ""
    echo "[SUCCESS] APK Generated Successfully!"
    echo "Location: app/build/outputs/apk/debug/app-debug.apk"
else
    echo ""
    echo "[FAILED] Build failed."
fi
