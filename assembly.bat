::disassemblyapk

SET FRAME_PATH=d:\frameworks
SET OUT_PUT=%~d1%~p1%~n1_re.apk

apktool.bat b %1 -o %OUT_PUT%

::apktool.bat b -p %FRAME_PATH% -o %~d1%~p1%~n1_rebuild.apk %1

apksigner.bat %OUT_PUT%

pause

::TEST
::apktool.bat d -p %FRAME_PATH% -f C:\Users\xiet\Desktop\reflactor\Android_cr\apk2java\apktool1.4.1\example\gifshow-android-4.30-web.apk -o C:\Users\xiet\Desktop\reflactor\Android_cr\apk2java\apktool1.4.1\example\test