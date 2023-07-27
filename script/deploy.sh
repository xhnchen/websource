GITHUB_URL=https://oauth:${GITHUB_TOKEN}@github.com/xhnchen/xhnchen.github.io
git clone ${GITHUB_URL} temp
rm -rf temp/*
mv public/* temp
cd temp 
git config --global init.defaultBranch main
git remote add origin ${GITHUB_URL}
git branch -M main
git config --global user.name "xhnchen"
git config --global user.email "2837797718@qq.com"
git add *
git commit -m "Automatic generation"
git push --set-upstream origin main
