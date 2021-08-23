一》备份文件（config/extra.sh&team.sh&config.sh&env.sh   db/env.db）

二》删除容器及文件夹
docker stop qinglong
docker rm qinglong
rm -rf CEST

三》删除镜像
docker image ls
docker image rm XXXX

四》部署青龙，更改端口号

docker run -dit \
  -v /root/JOJO/config:/ql/config \
  -v /root/JOJO/log:/ql/log \
  -v /root/JOJO/db:/ql/db \
  -v /root/JOJO/repo:/ql/repo \
  -v /root/JOJO/raw:/ql/raw \
  -v /root/JOJO/scripts:/ql/scripts \
  -v /root/JOJO/jbot:/ql/jbot \
  -v /root/JOJO/ninja:/ql/ninja \
  -p 5008:5700 \
  -p 5018:5701 \
  --name qinglong \
  --hostname qinglong \
  --restart unless-stopped \
  whyour/qinglong:latest
  
 五》部署NINJA 

进容器内执行以下命令docker exec -it qinglong /bin/sh

git clone https://github.com/MoonBegonia/ninja.git /ql/ninja
cd /ql/ninja/backend
pnpm install
pm2 start
cp sendNotify.js /ql/scripts/sendNotify.js

将以下内容粘贴到 extra.sh（重启后自动更新并启动 Ninja）

cd /ql/ninja/backend
git checkout .
git pull
pnpm install
pm2 start
cp sendNotify.js /ql/scripts/sendNotify.js

六》替换文件config+db

七》服务器开启端口

八》修改Ninja 环境变量

docker exec -it qinglong /bin/sh


cd /root/JOJO/ninja/backend
cp .env.example .env
vi .env

pm2 start

# ........................ ................................................
ALLOW_ADD=true

#.................................
ALLOW_NUM=400

# Ninja ............
NINJA_PORT=5701

# Ninja ..................
NINJA_NOTIFY=true

# user-agent
# NINJA_UA=""

*************************

十》更新青龙
cd
ql update

十一》添加仓库
ql repo https://ghproxy.com/https://github.com/anyung533/jojo.git "jd_|jx_|getJDCookie" "activity|backUp|Coupon" "^jd[^_]|USER|utils|file|jdCookie.js" 

十二》添加一次性依赖任务
task /ql/repo/anyung533_special/onlyone.sh

十三》添加文件替换任务
task /ql/repo/anyung533_jojo/JOJO/file.sh


常用命令
docker exec -it qinglong /bin/sh
cp -rfv /ql/repo/LJMX996_jd_aaron/utils /ql/scripts/

常用定时
20 13 * * 6      每6天执行一次
0,30 0-23/1 * * *    每30分钟一次





cd scripts




ql repo https://github.com/anyung533/jojo.git "jd_|jx_|gua_|code_|zy_|jd-task-" "tmp" "JDJRValidator_Pure.js|sign_graphics_validate.js|MovementFaker.js|ZooFaker_Necklace.js|USER"

ql repo https://ghproxy.com/https://github.com/anyung533/jojo.git "jd_|jx_|gua_|code_|zy_|jd-task-" "tmp" "JDJRValidator_Pure.js|sign_graphics_validate.js|MovementFaker.js|ZooFaker_Necklace.js|USER"

task /ql/repo/anyung533_special/yilai.sh















cp -rfv /ql/repo/LJMX996_jd_aaron/utils /ql/scripts/

cp -rfv /ql/repo/LJMX996_jd_aaron/function /ql/scripts/

cp -rfv /ql/ninja/backend/sendNotify.js /ql/scripts/sendNotify.js


cp -rfv /ql/repo/LJMX996_jd_aaron/pull.sh /ql/config/



ql repo https://github.com/LJMX996/jd.git "jd_|jx_|getJDCookie" "tools|activity|backUp|jd_delCoupon|format_" "^jd[^_]" "hello"


task /ql/repo/anyung533_jojo/JOJO/onlyone.sh


cp -rf /ql/repo/anyung533_jojo/utils /ql/scripts/
cp -rf /ql/repo/anyung533_jojo/utils/jdCookie.js /ql/scripts/
cp -rf /ql/repo/anyung533_jojo/utils/USER_AGENTS.js /ql/scripts/
cp -rf /ql/repo/anyung533_jojo/utils/TS_USER_AGENTS.js /ql/scripts/
cp -rf /ql/repo/anyung533_jojo/utils/TS_USER_AGENTS.ts /ql/scripts/
cp -rf /ql/repo/anyung533_jojo/utils/JD_DailyBonus.js /ql/scripts/
cp -rf /ql/repo/anyung533_jojo/utils/jdPlantBeanShareCodes.js /ql/scripts/
cp -rf /ql/repo/anyung533_jojo/utils/jdPetShareCodes.js /ql/scripts/
cp -rf /ql/repo/anyung533_jojo/utils/jdJxncShareCodes.js /ql/scripts/
cp -rf /ql/repo/anyung533_jojo/utils/jdFruitShareCodes.js /ql/scripts/
cp -rf /ql/repo/anyung533_jojo/utils/jdFactoryShareCodes.js /ql/scripts/
cp -rf /ql/repo/anyung533_jojo/utils/jdDreamFactoryShareCodes.js /ql/scripts/
cp -rf /ql/repo/anyung533_jojo/utils/jd_sign_validate.js /ql/scripts/
cp -rf /ql/repo/anyung533_jojo/MYDOC/favicon.ico /ql/ninja/backend/static/
cp -rf /ql/repo/anyung533_jojo/MYDOC/index.html /ql/ninja/backend/static/
cp -rf /ql/repo/anyung533_jojo/utils/code.sh /ql/config/
cp -rf /ql/repo/anyung533_jojo/utils/team.sh /ql/config/
cp -rf /ql/repo/anyung533_jojo/utils/JDJRValidator_Smiek.js /ql/scripts/
cp -rf /ql/repo/anyung533_jojo/utils/jd_sign_graphics.js /ql/scripts/

cp -rf /ql/repo/anyung533_jojo/utils/JDSignValidator.js /ql/scripts/



#名称：格式化更新互助码
#命令：task /ql/config/code.sh
#定时规则：10 * * * *

ql repo https://ghproxy.com/https://github.com/anyung533/special.git "jd_|jx_|pull|gua_|code_|zy_" "JDJRValidator_Pure.js|sign_graphics_validate.js|MovementFaker.js|ZooFaker_Necklace.js|jd_sign_validate.js"


ql repo https://ghproxy.com/https://github.com/anyung533/jojo.git "jd_|jx_|gua_|code_|zy_|jd-task-" "tmp" "JDJRValidator_Pure.js|sign_graphics_validate.js|MovementFaker.js|ZooFaker_Necklace.js|USER"



修改ninja
/root/JOJO/ninja/backend/static/

index.html及ico

<!DOCTYPE html>
<html lang="zh">
  <head>
    <meta charset="UTF-8" />
    <link rel="icon" href="/favicon.ico" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Ninja</title>
    <script type="module" crossorigin src="/assets/index.1a8beb0e.js"></script>
    <link rel="modulepreload" href="/assets/vendor.baa403e4.js">
    <link rel="stylesheet" href="/assets/index.fcdd9895.css">
  </head>
  <body>
    <div id="app"></div>
    <script>
    window.onload=function(){
    	var diy = document.querySelector(".leading-6");
    	var html = "";
    	html+="<p>①，点击右上角三个冒号，选择浏览器中打开</p>"+
    	"<p>②，点击第二个“跳转到京东”，提示升级版本无需理会。</p>"+
    	"<p>③，如果没有三个冒号，则点击第一个“二维码登录”，截图保存二维码，然后京东首页扫一扫，提示升级版本无需理会。</p>"+
    	"<p>④，不想刷豆豆就点击删除账号。</p>"+
    	"<p>⑤，扫码登录Cookie正常有效期最多1个月，建议15天重新登陆一次</p>"+
    	"<p>⑥，为了你的财产安全，强烈建议关闭免密支付并且开启支付验证密码。</p>";
    	diy.innerHTML = html;
    }
    </script>
  </body>
</html>
使用京东扫描二维码登录，提示升级版本无需理会，直接回到网页等待跳转，登录成功显示用户名或者提示添加成功即自动上车。


目前支持的环境变量有：

ALLOW_ADD: 是否允许添加账号 不允许添加时则只允许已有账号登录（默认 true）
ALLOW_NUM: 允许添加账号的最大数量（默认 40）
NINJA_PORT: Ninja 运行端口（默认 5701）
NINJA_NOTIFY: 是否开启通知功能（默认 true）
NINJA_UA: 自定义 UA，默认为随机
配置方式：