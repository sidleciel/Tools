rem ����˵�� 
cls
Title [ɾ�����]


@echo off

echo ɾ����� 0.�˳� 
echo 1.ALL      2.ƽ̨     3.FBA	4.GBA	5.SFC

SET CMD=adb uninstall 
SET PKG_MG=com.join.android.app.mgsim
SET PKG_FBA=com.papa91.arc
SET PKG_GBA=com.papa91.gba
SET PKG_SFC=com.papa91.snes


:set_options
SET /p option=������ѡ� 
if "%option%" EQU "0" (
exit
)
if "%option%" EQU "1" (  
%CMD% %PKG_MG%
%CMD% %PKG_FBA%
%CMD% %PKG_GBA%
%CMD% %PKG_SFC%
)
if "%option%" EQU "2" (
%CMD% %PKG_MG%
)
if "%option%" EQU "3" (
%CMD% %PKG_FBA%
)
if "%option%" EQU "4" (
%CMD% %PKG_GBA%
)
if "%option%" EQU "5" (
%CMD% %PKG_SFC%
)


goto set_options