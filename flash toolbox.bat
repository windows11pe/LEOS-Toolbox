@echo off
chcp 936
:: ------------------------------------------------------------------------------------------------------------------------------------------------------------
::           OOO        OOOOOOOO      OOO        OOO          
::           OOO        OOOOOOOO    OOOOOO     OOOOOO         
::           OOO        OOOOOOOO   OOOOOOOO   OOOOOOOO        
::           OOO        OOO        OOO   OOO  OOO   OO        
::           OOO        OOO        OO    OOO  OOO   OO        
::           OOO        OOO        OO    OOO  OOOO            
::           OOO        OOOOOOOO   OO    OOO   OOOOO          toolbox V1 powerby cooollawf and ������
::           OOO        OOOOOOOO   OO    OOO    OOOOO                         
::           OOO        OOO        OO    OOO      OOOO        
::           OOO        OOO        OO    OOO        OOO       
::           OOO        OOO        OO    OOO  OO    OOO       
::           OOO        OOO        OOO   OOO  OOO   OOO       
::           OOOOOOOOO  OOOOOOOOO  OOOOOOOO   OOOOOOOO        
::           OOOOOOOOO  OOOOOOOOO   OOOOOO     OOOOOOO        
::           OOOOOOOOO  OOOOOOOOO     OOO       OOOO          
::______________________________________________________________________________________________________________________________________________________________
:: part 01(���˵�)

:menu
cls
echo           OOO        OOOOOOOO      OOO        OOO          
echo           OOO        OOOOOOOO    OOOOOO     OOOOOO         
echo           OOO        OOOOOOOO   OOOOOOOO   OOOOOOOO        
echo           OOO        OOO        OOO   OOO  OOO   OO        
echo           OOO        OOO        OO    OOO  OOO   OO        
echo           OOO        OOO        OO    OOO  OOOO            
echo           OOO        OOOOOOOO   OO    OOO   OOOOO          
echo           OOO        OOOOOOOO   OO    OOO    OOOOO         
echo           OOO        OOO        OO    OOO      OOOO        
echo           OOO        OOO        OO    OOO        OOO       
echo           OOO        OOO        OO    OOO  OO    OOO       
echo           OOO        OOO        OOO   OOO  OOO   OOO       
echo           OOOOOOOOO  OOOOOOOOO  OOOOOOOO   OOOOOOOO        
echo           OOOOOOOOO  OOOOOOOOO   OOOOOO     OOOOOOO        
echo           OOOOOOOOO  OOOOOOOOO     OOO       OOOO          
echo ������������������漣����ӭ����LEOS Toolbox������V1��
echo.
echo ��ѡ��һ��ѡ�
echo 1. ˢ��/systemĿ¼�µ�system.img
echo 2. ˢ��boot
echo 3. �Զ�ˢ��LEOS
echo 4. �����ֻ�
echo 5. �Դ�ADB CMD
echo 6. �Զ�����BOOTLOADER Lock��ˢ��TWRP
echo 7. ��ʽ��userdata
echo 8. ��������С�ݣ�û�п�����
echo 9.����system/boot��Դ
echo 10.��װ����
echo.
set /p choice=����������ѡ��1-9����
if "%choice%"=="1" goto option1
if "%choice%"=="2" goto option2
if "%choice%"=="3" goto option3
if "%choice%"=="4" goto option4
if "%choice%"=="5" goto option5
if "%choice%"=="6" goto option6
if "%choice%"=="7" goto option7
if "%choice%"=="8" goto option8
if "%choice%"=="9" goto option9
if "%choice%"=="10" goto option10
echo ��Ч��ѡ�����������롣
pause
goto menu

:option1
fastboot flash system/system.img
pause
goto menu

:option2
fastboot flash boot/boot.img
pause
goto menu

:option3
echo �������������û��ʵ��
pause
goto menu

:option4
fastboot reboot
pause
goto menu

:option5
start ADB.BAT
pause
goto menu

:option6
start unlock
pause
goto menu

:option7
fastboot erase userdata
pause
goto menu

:option8
echo echo �������������û��ʵ��
pause
goto menu

:option9
echo ���ƶ�Ӧ���ļ���system.img/boot.img�����������Ӧ��Ŀ¼����Ϳ�����(system/bootĿ¼��
pause
goto menu

:option10
echo ��ȴ���װ��������װ��ɺ���������Իص���ҳ��
start drv.exe
pause
goto menu

pause
:: -------------------------------------------------------------------------------------------------------------
:: ������һ��
:: -------------------------------------------------------------------------------------------------------------