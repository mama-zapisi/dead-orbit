@echo off
cd /d "%~dp0"
echo [1/3] Sobirayu igru iz chastey...
copy /b DeadOrbit.part0.bin + DeadOrbit.part1.bin + DeadOrbit.part2.bin DeadOrbit_v1b.zip >nul
echo [2/3] Raspakovyvayu...
powershell -NoProfile -Command "Expand-Archive -Force -LiteralPath DeadOrbit_v1b.zip -DestinationPath ."
if not exist "DeadOrbit\DeadOrbit.exe" (
  echo Ne nashel DeadOrbit.exe - vozmozhno ego udalil Zashchitnik Windows.
  echo Bezopasnost Windows - Zashchita ot virusov - Zhurnal zashchity - Vosstanovit.
  pause
  exit /b
)
echo [3/3] Zapuskayu!
start "" "DeadOrbit\DeadOrbit.exe"
