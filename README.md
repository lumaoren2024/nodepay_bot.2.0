# nodepayai
nodepay.ai签到 100% 在线免费 Python3
通过我的RF注册：https://app.nodepay.ai/register?ref=PMLZWyjtnh4r9Ki

## 4.0版本说明
### 1、配置说明
#### 1、1 account.txt 说明
格式：email,name,passwd
例子：dandan@gmail.com,dandan0x12,Uysw6345.H
#### 1、2 api_key.txt 说明
在https://2captcha.com/网站申请key，4u大概可以认证4000次左右，注册和抓取token才需要用到这个功能。挂机不用！
在2captcha管理中心找到Account settings->API Key 复制放到文档中！
#### 1、3 proxies.txt 说明
注册和登录使用时的代理，格式如下：
```txt
http://user:pass@ip:port
socks5://user:pass@ip:port
```
#### 1、4 rfcode.txt 注册时候使用的邀请码

#### 1、5 token.txt 抓取以后存储的文件，不需要修改

#### 1、6 tokens_proxy.txt 挂机使用的配置文件
将token.txt的内容复制到tokens_proxy.txt然后用英文的(,)逗号风格。最高支持3个ip多了无法挂机节点！
```txt
Token,proxy1,proxy2,proxy3
```

### 2、运行脚本
```bash
#mac
chmod +x NodePay_Mac
./NodePay_Mac

#linux
chmod +x NodePay_Linux
./NodePay_Linux

#windows
#方法1:双击NodePay.exe
#方法2:日志方式运行 cmd到当前目录 然后.\NodePay.exe
```


## 脚本 3挂机功能特别说明
## 不想花钱买验证器的骚年，手工抓取教程
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

