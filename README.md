# nodepayai
nodepay.ai签到 100% 在线免费 Python3
通过我的RF注册：https://app.nodepay.ai/register?ref=PMLZWyjtnh4r9Ki
# 功能
打开链接并登录 ``https://app.nodepay.ai/dashboard``
在页面上按 F12 打开控制台并输入代码（Ctrl + Shift + i）检查
在控制台中输入 ``localStorage.getItem('np_token');``
"打印的文本是 NP_TOKEN"

# 运行代码的步骤 -
## 1、获取相关的代码

np_token 获取

>方法1:chrome f12 进入开发中心，然后找到网络：device-networks 这样的标签。找到 authorization:里面的代码就可以了，千万别复制：Bearer
>
>方法2:chrome f12 进入开发中心，控制台输入：localStorage.getItem('np_token');

## 2、运行脚本
```bash
#mac/linux 运行run.sh
chmod +x noproxy_nodepay
./noproxy_nodepay
chmod +x proxy_nodepay
./proxy_nodepay
#windows
#双击noproxy_nodepay.exe或者proxy_nodepay.exe
```
