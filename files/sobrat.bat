@echo off
cd /d "%~dp0"
echo Sobirayu DeadOrbit_v1b.zip ...
copy /b DeadOrbit.part0.bin + DeadOrbit.part1.bin + DeadOrbit.part2.bin DeadOrbit_v1b.zip
echo Gotovo. Teper raspakuy DeadOrbit_v1b.zip (pravoy knopkoy - Izvlech vse).
pause
