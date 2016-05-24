rem 程序说明 
cls
Title [删除插件]


@echo off

echo 删除插件 0.退出 
echo 1.ALL      2.平台     3.FBA	4.GBA	5.SFC

SET CMD=adb uninstall 
SET PKG_MG=com.join.android.app.mgsim
SET PKG_FBA=com.papa91.arc
SET PKG_GBA=com.papa91.gba
SET PKG_SFC=com.papa91.snes


:set_options
SET /p option=请输入选项： 
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