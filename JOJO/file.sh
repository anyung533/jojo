#NINJA替换
cp -rf /ql/repo/anyung533_jojo/file/favicon.ico /ql/ninja/backend/static/
cp -rf /ql/repo/anyung533_jojo/file/index.html /ql/ninja/backend/static/
#jdCookie.js
cp -rf /ql/repo/anyung533_jojo/file/jdCookie.js /ql/scripts/
#code.sh+team.sh
cp -rf /ql/repo/anyung533_jojo/file/code.js /ql/config/
cp -rf /ql/repo/anyung533_jojo/file/team.js /ql/config/
更新NINJA
rm -rf /ql/ninja/backend/ql.js
rm -rf /ql/ninja/backend/user.js

cd /ql/ninja/backend && wget https://raw.githubusercontent.com/MoonBegonia/ninja/deda6f0c0207f2bc0e10454fdbe99b3a9f3878a8/backend/ql.js

cd /ql/ninja/backend && wget https://raw.githubusercontent.com/MoonBegonia/ninja/deda6f0c0207f2bc0e10454fdbe99b3a9f3878a8/backend/user.js

pnpm install
pm2 start








	