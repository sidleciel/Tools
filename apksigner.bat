::disassemblyapk

jarsigner -verbose -keystore E:\workspace\app_export\android.keystore -storepass 123456 -signedjar %~p1%~n1_signed.apk -digestalg SHA1 -sigalg MD5withRSA %1 android.keystore


::pause

::TEST
::apktool.bat d -p %FRAME_PATH% -f C:\Users\xiet\Desktop\reflactor\Android_cr\apk2java\apktool1.4.1\example\gifshow-android-4.30-web.apk -o C:\Users\xiet\Desktop\reflactor\Android_cr\apk2java\apktool1.4.1\example\test