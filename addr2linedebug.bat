rem ����˵��
cls
Title [NDK_DEBUG��λ]
::begin----------------------------------- 

@echo off

rem addr2lineʹ��˵�� 
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

 

rem �������� 
if "%1" NEQ "" (
ECHO �ļ���Ϣ============================= 
echo ��ȫ·����%1
echo ȥ�����ţ�%~1 
echo ���ڷ�����%~d1 
echo ����·����%~p1 
echo �� �� ����%~n1 
echo �� չ ����%~x1 
echo �ļ����ԣ�%~a1 
echo �޸�ʱ�䣺%~t1 
echo �ļ���С��%~z1  
ECHO �ļ���Ϣ============================= 
ECHO/
SET libpath=%1
goto get_ret) else (
echo ��ǰ·����%cd%\
set libpath=
set /p choice=����ڵ�ǰ·����y,n����
)

if %choice%==y goto currentdir
if %choice%==Y goto currentdir
if %choice%==n goto absolutedir
if %choice%==N goto absolutedir

:currentdir
set /p libname=������������ƣ�
set libpath=%cd%\%libname% 
goto get_ret

:absolutedir
set /p libpath=������������·����
goto get_ret


:get_ret
echo/ 
set address=
set /p address=������Ҫ��ѯ�ĵ�ַ(���س��˳�):
if "%address%" EQU "" goto exit
set address=%address_pre%%address%
set command=%addr2line% -e %libpath% %address%
%command%
goto get_ret



:exit
exit

::end-----------------------------------
pause>nul