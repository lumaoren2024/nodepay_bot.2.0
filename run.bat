@echo off
:: 检查是否安装了 Python
where python > nul 2>nul
if %errorlevel% neq 0 (
    echo Python3 is not installed. Please install Python3.
    exit /b 1
) else (
    echo Python3 is installed.
)

:: 检查是否处于虚拟环境中
if not defined VIRTUAL_ENV (
    echo You are not in a virtual environment.
    pause
    exit /b 1
) else (
    echo You are in a virtual environment: %VIRTUAL_ENV%
)

:: 检查 requirements.txt 中的组件是否已安装
echo Checking if the required Python packages are installed...
pip install -r requirements.txt

:: 提示用户选择运行的 Python 文件
echo Choose which Python file to run:
echo 1. noproxy_nodepay
echo 2. proxy_nodepay
set /p choice=Enter 1 or 2: 

:: 根据用户选择运行相应的 Python 文件
if "%choice%"=="1" (
    echo Running noproxy_nodepay...
    python noproxy_nodepay
) else if "%choice%"=="2" (
    echo Running proxy_nodepay...
    python proxy_nodepay
) else (
    echo Invalid choice. Exiting...
    exit /b 1
)
