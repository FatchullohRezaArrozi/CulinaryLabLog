@echo off
echo Deleting old banner xml...
del "C:\Users\acer\AndroidStudioProjects\CulinaryLabLog\app\src\main\res\drawable\banner_food.xml"
if %errorlevel% neq 0 echo Failed to delete xml (might not exist)

echo Copying new banner jpg...
copy /Y "C:\Users\acer\.gemini\antigravity\brain\5ba5b6f8-34e0-44c7-8726-ce02a8818179\uploaded_image_1765049460037.jpg" "C:\Users\acer\AndroidStudioProjects\CulinaryLabLog\app\src\main\res\drawable\banner_food.jpg"
if %errorlevel% neq 0 (
    echo Copy failed with error %errorlevel%
) else (
    echo Copy success
)

dir "C:\Users\acer\AndroidStudioProjects\CulinaryLabLog\app\src\main\res\drawable\banner_*"
