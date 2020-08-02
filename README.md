# 模组模板
这是一个tModLoader模组模板。使用此模板后，在推送（`push`）代码到`master`分支时，持续集成将会自动编译打包你的模组，并将其上传到模组浏览器中。

### 使用模组浏览器前的准备  
* 打开[官方模组浏览器](http://javid.ddns.net/tModLoader/register.php)，点击Steam按钮登录。  
  * 如果登陆失败，可以重复尝试几次。  
* 点击`User Info`按钮  
  找到屏幕中间的一行数字（`Your steamid is: 7656xxxxxxxxxxxxx`）  
  将它记下来。这是你的Steam ID 64。  
* 点击倒数第二个按钮`Generate Passphrase Now`界面  
  找到屏幕中间的一串密钥（`Your new passphrase is: 1234567890abcdefxxxxxxxxxxxxxxxx `）  
  将它记下来。这是你的密钥。  
* 打开仓库界面，点击`Settings`按钮，然后点击左侧菜单里的`Secrets`项目。  
* 点击`New Secret`按钮，在第一行填入`steamid64`，并在下方写下你的Steam ID 64，点击`New Secret`按钮。  
* 点击`New Secret`按钮，在第一行填入`mod_browser_passphrase`，并在下方写下你的密钥，点击`New Secret`按钮。  
* 好的！你已经成功设定了”自动上传至模组浏览器“所需要的全部相关信息了！

### 使用模板前的准备  
* 运行`scripts/setup.ps1`，输入模组的内部名称。  
  不要随便填写个abcabc - 因为这个名称将会是唯一的。
* 打开`src/build.txt`，修改其中的显示名称、作者和版本号。  
  只有版本号不同的模组才可以上传 - **重复的不能上传**！  
  **在更新的时候，记得改版本号！**  
* 【可选】打开`src/description.txt`，修改其中的模组描述。  
* 【可选】打开`LICENSE`，在第三行末尾添加开源代码的拥有者信息。  

### GitHub好慢啊！
* [试下这个加速版！](https://hub.fastgit.org/)

### 等等，我怎么用这个模板？
* [点击右上角的Use this template](https://github.com/chi-rei-den/tModTemplate/generate) 或 [(加速版）Use this template](https://hub.fastgit.org/chi-rei-den/tModTemplate/generate)
* 填写基本都信息以创建仓库。
* 创建完毕后单击Code，将代码克隆`clone`到本地后就可以开始开发了！

### emmmmmm我好像不是很会用git啊可是
* [猴子都能懂的GIT入门](https://backlog.com/git-tutorial/cn/intro/intro1_1.html)
* [廖雪峰的浅显易懂Git教程](https://www.liaoxuefeng.com/wiki/896043488029600)
