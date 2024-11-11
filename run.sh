#!/bin/bash

# 检查 Python 是否安装
if command -v python3 &>/dev/null; then
    echo "Python3 已安装。"
else
    echo "Python3 未安装。请安装 Python3。"
    exit 1
fi

# 检查是否处于虚拟环境中
if [ -z "$VIRTUAL_ENV" ]; then
    echo "您不在虚拟环境中."
    read -p "请先进入虚拟环境或按 Ctrl+C 退出."
    exit 1
else
    echo "您处于虚拟环境中: $VIRTUAL_ENV"
fi

# 检查 requirements.txt 中的组件是否已安装
echo "检查所需的 Python 包是否已安装..."
pip3 install -r requirements.txt

# 提示用户选择运行的 Python 文件
echo "选择要运行的版本:"
echo "1. 没有代理(No Proxy)"
echo "2. 使用代理(Proxy)"
read -p "输入 1 or 2: " choice

# 根据用户选择运行相应的 Python 文件
case $choice in
1)
    echo "Running noproxy_nodepay..."
    python3 noproxy_nodepay
    ;;
2)
    echo "Running proxy_nodepay..."
    python3 proxy_nodepay
    ;;
*)
    echo "选择无效。退出..."
    exit 1
    ;;
esac
