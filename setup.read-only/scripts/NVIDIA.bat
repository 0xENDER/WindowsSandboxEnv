@echo off

echo [START] Installing NVIDIA Display Drivers

echo [STEP] Extracting NVIDIA Display Drivers files
start /B /wait c:\.setup\graphics\NVIDIA\546.33-desktop-win10-win11-64bit-international-dch-whql.exe -s

echo [STEP] Executing NVIDIA Display Drivers installer
start /B /wait c:\NVIDIA\DisplayDriver\546.33\Win11_Win10-DCH_64\International\setup.exe
