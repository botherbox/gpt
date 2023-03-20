#!/usr/bin/env sh

# 发生错误时终止
set -e

# 构建
npm run build
echo '[🎉 BUILD DONE]'

# 进入构建文件夹
cd dist

# 如果你要部署到自定义域名
# echo 'www.example.com' > CNAME

echo '[🎉 GIT Commit...]'
# git init
# git checkout -b main
git add .
git commit -m 'deploy'
echo '[🎉 GIT Commit DONE]'

# 如果你要部署在 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git main

# 如果你要部署在 https://<USERNAME>.github.io/<REPO>

git push -f git@github.com:botherbox/gpt.git main:gh-pages
echo '[🎉 GIT Push DONE]'

cd -