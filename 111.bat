@echo off
echo 正在删除所有commit历史...
rmdir /s /q .git
echo 初始化新仓库...
git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/DADiDiDiDA/Resonance.git
echo 强制推送到远程（将master推送到main）...
git push -u origin master:main --force
echo 完成！
pause