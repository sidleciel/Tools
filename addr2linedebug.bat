rem 程序说明
cls
Title [NDK_DEBUG定位]
::begin----------------------------------- 

@echo off

rem addr2line使用说明 
goto Addr2lineOptions
echo file                Read options from file
echo -a --addresses         Show addresses
echo -b --target=<bfdname>  Set the binary file format
echo -e --exe=<executable>  Set the input file name (default is a.out)
echo -i --inlines           Unwind inlined functions
echo -j --section=<name>    Read section-relative offsets instead of addresses
echo -p --pretty-print      Make the output easier to read for humans
echo -s --basenames         Strip directory names
echo -f --functions         Show function names
echo -C --demangle[=style]  Demangle function names
echo -h --help              Display this information
echo -v --version           Display the program's version 
:Addr2lineOptions


::values----------------------------------
SET addr2line=%NDK_ROOT%\toolchains\arm-linux-androideabi-4.6\prebuilt\windows-x86_64\bin\arm-linux-androideabi-addr2line.exe
SET libpath=
SET address_pre=0x
SET address=
SET command=

 

rem 可以设置 
if "%1" NEQ "" (
ECHO 文件信息============================= 
echo 完全路径：%1
echo 去掉引号：%~1 
echo 所在分区：%~d1 
echo 所处路径：%~p1 
echo 文 件 名：%~n1 
echo 扩 展 名：%~x1 
echo 文件属性：%~a1 
echo 修改时间：%~t1 
echo 文件大小：%~z1  
ECHO 文件信息============================= 
ECHO/
SET libpath=%1
goto get_ret) else (
echo 当前路径：%cd%\
set libpath=
set /p choice=类库在当前路径（y,n）？
)

if %choice%==y goto currentdir
if %choice%==Y goto currentdir
if %choice%==n goto absolutedir
if %choice%==N goto absolutedir

:currentdir
set /p libname=请输入类库名称：
set libpath=%cd%\%libname% 
goto get_ret

:absolutedir
set /p libpath=请输入类库绝对路径：
goto get_ret


:get_ret
echo/ 
set address=
set /p address=请输入要查询的地址(按回车退出):
if "%address%" EQU "" goto exit
set address=%address_pre%%address%
set command=%addr2line% -e %libpath% %address%
%command%
goto get_ret



:exit
exit

::end-----------------------------------
pause>nul