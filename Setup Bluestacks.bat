@echo off
:: This is probably the shittiest spaghetti code I've ever written, but it should work I guess.
:: Probably because it's the first time I wrote batch, who knows
cd %LOCALAPPDATA%\Android\sdk\platform-tools

:Start
set /p bluestacksSetup = Did you setup Bluestacks to be on port 5555? (y/n)
if not bluestacksSetup == "y"(
    echo "Please setup Bluestacks to be on port 5555 before doing anything else"
    echo "Press Anything to leave"
    timeout /t -1 > nul
)
adb connect localhost:5555
adb root 
adb remount
adb pull /system/etc/hosts
echo "Check if Bluestacks is connected"
adb devices
set /p _ = Is bluestacks connected? (y/n)
if not (_ == "y") (
    goto :Start
) 
adb pull /system/etc/hosts

echo "Modify Hosts, then press Y to push it to your emulator"

:hostsetup

set /p _ = Did you modify hosts? (y/n)
echo "PLEASE DO NOT CLOSE OR RESTART THE SCRIPT NOW"
if not (_ == "y") (
    echo "You gave us an input different from Y, tell us when you're finished"
    goto :hostsetup
)
echo "Pushing hosts to the emulator..."

adb push ./hosts /etc/hosts
adb push ./hosts /etc/system/hosts
adb push ./hosts /system/etc/hosts

echo "Hosts has been succesfully pushed to the emulator"
timeout /t 1 > nul
echo "You should probably restart the emulator"
echo "Press anything to leave."
timeout \t -1 > nul