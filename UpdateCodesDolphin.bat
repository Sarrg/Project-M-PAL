@echo off
REM java -jar tools\jwiicm-0.5.2.jar -f RSBE01.txt > tmp\RSBE01.gct
java -jar tools\jwiicm-0.5.2.jar -f RSBP01.txt > tmp\RSBP01.gct
imdisk -a -f "C:\%HOMEPATH%\Documents\Dolphin Emulator\Wii\sd.raw" -m P:
REM xcopy "tmp\RSBE01.gct" "P:\codes\RSBE01.gct" /y
xcopy "tmp\RSBP01.gct" "P:\codes\RSBP01.gct" /y
rd /s /q "tmp\"
imdisk -D -m P:
