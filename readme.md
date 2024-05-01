# LEOS ToolBox （for LE X620）



![](https://img2.imgtp.com/2024/05/01/9zp8Bh0R.png)

## 

### 简介

LEOS ToolBox是专门给乐视X620（乐视2）制作，使用CC-BY-SA协议

### 注意

> 这是windows cmd语言，也就是俗称的小学生语言，所以使用时候一定，一定看眼代码有没有被恶意修改




#### 行内代码

执行命令：`start toolbox.bat`

#### 详细代码
# 注意：这些代码可能不是最新的，请按照toolbox.bat内文件代码为准

```
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
echo 1. 刷入/system目录下的system.img
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
echo 无效的选择，请重新输入。
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
echo 额。。。看起来还没有实现
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
echo echo 额。。。看起来还没有实现
pause
goto menu

:option9
echo 复制对应的文件（system.img/boot.img）到名字相对应的目录里面就可以了(system/boot目录）
pause
goto menu

:option10
echo 请等待安装驱动，安装完成后按下任意键以回到主页面
start drv.exe
pause
goto menu

pause
:: -------------------------------------------------------------------------------------------------------------
:: 结束这一行
:: -------------------------------------------------------------------------------------------------------------
``````

```

```

### 目前bug

| 名字        | 介绍    |  数量  |
| --------   | ------   | ----  |
| 乱码        | 只是乱码 |   5    |
| 链接不上        |  无法检测到设备  |  12   |


---

