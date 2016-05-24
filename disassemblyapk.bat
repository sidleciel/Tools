::disassemblyapk

::method 1
SET FRAME_PATH=d:\frameworks
::apktool.bat advanced d -r -p %FRAME_PATH% -f %1 -o %~p1%~n1 -v

:: for version 2.1.1+
apktool.bat advanced d -p %FRAME_PATH% -f %1 -o %~p1%~n1 -v


::method 2
::apktool.bat d -r -f %1 -o %~p1%~n1

pause

::TEST
::apktool.bat d -p %FRAME_PATH% -f C:\Users\xiet\Desktop\reflactor\Android_cr\apk2java\apktool1.4.1\example\gifshow-android-4.30-web.apk -o C:\Users\xiet\Desktop\reflactor\Android_cr\apk2java\apktool1.4.1\example\test