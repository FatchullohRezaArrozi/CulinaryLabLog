@echo off
echo ========================================
echo  RESET DATABASE - CulinaryLabLog
echo ========================================
echo.
echo Langkah ini akan:
echo 1. Uninstall aplikasi dari HP
echo 2. Clear build cache
echo 3. Rebuild project
echo 4. Install aplikasi baru
echo.
echo PASTIKAN HP SUDAH TERHUBUNG VIA USB!
echo.
pause

echo.
echo [1/4] Uninstalling old app...
adb uninstall com.example.culinarylab
echo Done!

echo.
echo [2/4] Cleaning project...
cd /d "%~dp0"
call gradlew clean
echo Done!

echo.
echo [3/4] Building project...
call gradlew assembleDebug
echo Done!

echo.
echo [4/4] Installing new app...
call gradlew installDebug
echo Done!

echo.
echo ========================================
echo  DATABASE RESET COMPLETE!
echo ========================================
echo.
echo Sekarang buka aplikasi dan test:
echo - Login dengan admin/admin123
echo - Klik "Lihat Semua Resep"
echo - Harus muncul 14 resep!
echo.
pause
