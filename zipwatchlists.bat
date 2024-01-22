@echo off

set sourceDir1="C:\Users\admin\OneDrive\Michael\Documents\Investing\DMT Discord Server\DTP Images\Interesting Stocks"
set targetDir1="C:\Users\admin\OneDrive\Michael\Documents\Investing\DMT Discord Server\DTP Images"
set zipFileName1="Broadlist.zip"

set sourceDir2="C:\Users\admin\OneDrive\Michael\Documents\Investing\DMT Discord Server\DTP Images\Buy List"
set zipFileName2="Focuslist.zip"

rem Zip and delete files in the first directory
powershell -Command "Compress-Archive -Path '%sourceDir1%\*.png' -DestinationPath ('%targetDir1%\' + '%zipFileName1%') -Force"
del /Q %sourceDir1%\*.png
echo "PNG files in %sourceDir1% have been archived to %targetDir1%\%zipFileName1%"

rem Zip and delete files in the second directory
powershell -Command "Compress-Archive -Path '%sourceDir2%\*.png' -DestinationPath ('%targetDir1%\' + '%zipFileName2%') -Force"
del /Q %sourceDir2%\*.png
echo "PNG files in %sourceDir2% have been archived to %targetDir1%\%zipFileName2%"

pause
