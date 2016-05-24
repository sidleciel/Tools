::JOBB

::type: main,patch

SET INPUT=E:\workspace.jobb\root
SET PACKAGE=com.my.app.package
SET VERSION=1
SET OBB_TYPE=main
SET SECRET_KEY=123456


SET OBB_NAME=%OBB_TYPE%.%VERSION%.%PACKAGE%.obb

jobb -d %INPUT% -o %~d1%~p1%OBB_NAME% -k %SECRET_KEY% -pn %PACKAGE% -pv %VERSION% -v

::jobb -d E:\workspace.jobb\root -o E:\workspace.jobb\main.1.com.my.app.package.obb -k 123456 -pn com.my.app.package -pv 1 -v

pause