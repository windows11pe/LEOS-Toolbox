@echo off
chcp 936
:: ------------------------------------------------------------------------------------------------------------------------------------------------------------
::           OOO        OOOOOOOO      OOO        OOO          
::           OOO        OOOOOOOO    OOOOOO     OOOOOO         
::           OOO        OOOOOOOO   OOOOOOOO   OOOOOOOO        
::           OOO        OOO        OOO   OOO  OOO   OO        
::           OOO        OOO        OO    OOO  OOO   OO        
::           OOO        OOO        OO    OOO  OOOO            
::           OOO        OOOOOOOO   OO    OOO   OOOOO          toolbox V1 powerby cooollawf and 贡献者
::           OOO        OOOOOOOO   OO    OOO    OOOOO                         
::           OOO        OOO        OO    OOO      OOOO        
::           OOO        OOO        OO    OOO        OOO       
::           OOO        OOO        OO    OOO  OO    OOO       
::           OOO        OOO        OOO   OOO  OOO   OOO       
::           OOOOOOOOO  OOOOOOOOO  OOOOOOOO   OOOOOOOO        
::           OOOOOOOOO  OOOOOOOOO   OOOOOO     OOOOOOO        
::           OOOOOOOOO  OOOOOOOOO     OOO       OOOO          
::______________________________________________________________________________________________________________________________________________________________
:: part 01(主菜单)

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
echo “与你的相遇，就是奇迹，欢迎来到LEOS Toolbox工具箱V1”
echo.
echo 请选择一个选项：
echo 1. 刷入/system目录下的system.img        11.解决openrecovery脚本报错导致卡在rec问题
echo 2. 刷入boot
echo 3. 自动刷入LEOS
echo 4. 重启手机
echo 5. 自带ADB CMD
echo 6. 自动解锁BOOTLOADER Lock并刷入TWRP
echo 7. 格式化userdata
echo 8. 神奇妙妙小屋（没有开发）
echo 9.导入system/boot资源
echo 10.安装驱动
echo.
set /p choice=请输入您的选择（1-9）：
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
if "%choice%"=="11" goto openrecovery1
echo 无效的选择，请重新输入。
pause
goto menu
::---------------
::刷入部分
::---------------
:option1
fastboot flash system/system.img
pause
goto menu

:option2
fastboot flash boot/boot.img
pause
goto menu

:option3
echo 额。。。看起来还没有实现
pause
goto menu
::---------------
::刷入部分结束
::---------------
::其他部分
::---------------
:option4
fastboot reboot
pause
goto menu

:option5
start ADB.BAT
pause
goto menu
::---------------
::其他部分结束
::---------------
::危险区域（基本和数据有关系）
::---------------
:option6
start unlock.bat
pause
goto menu

:option7
fastboot erase userdata
pause
goto menu

:option8
echo echo 额。。。看起来还没有实现
pause
goto menu
::---------------
::危险部分结束
::---------------
::复制区域
::---------------
:option9
echo 复制对应的文件（system.img/boot.img）到名字相对应的目录里面就可以了(system/boot目录）
pause
goto menu
::-----------
::复制部分结束
::-----------
::安装驱动部分开始
::-----------
:option10
echo 请等待安装驱动，安装完成后按下任意键以回到主页面
start drv.exe
pause
goto menu
::安装驱动部分结束

pause
::-------------------------------------------------------------------------------------------------------------
:: 结束这一行
::-------------------------------------------------------------------------------------------------------------
::openrecovery部分(part2)
::-------------------------------------------------------------------------------------------------------------
:openrecovery1
cls
echo 请确认你的手机在没在recovery下，如果进入无限重启状态就按电源键和音量减小键进入fastboot，然后输入“我已经进入了无限重启状态并进入了fastboot”，否则输入“我已经在rec下”
set /p choice=请输入您的选择：
if "%choice%"=="我已经进入了无限重启状态并进入了fastboot" goto openrecoveryfb1
if "%choice%"=="我已经在rec下" goto openrecoverystart1

:openrecoveryfb1
cls
echo 开始执行
fastboot erase userdata
fastboot flash recovery /TWRP/rec.img
echo 完成！进入rec（长按电源加音量增大键直到出现RECOVERY字样），完成后按下任意键复制目录下的刷机包到手机(把卡刷包重命名为update.zip然后放到软件根目录下)
adb push update.zip /sdcard
echo 完成！按照正常方法刷入
goto menu

:openrecoverystart1
cls
echo 开始执行
adb reboot BOOTLOADER
echo 如果没有进入到fastboot就长按按电源+音量减小键
fastboot erase userdata
fastboot flash recovery /TWRP/rec.img
echo 完成！进入rec（长按电源加音量增大键直到出现RECOVERY字样），完成后按下任意键复制目录下的刷机包到手机(把卡刷包重命名为update.zip然后放到软件根目录下)
adb push update.zip /sdcard
echo 完成！按照正常方法刷入
goto menu




