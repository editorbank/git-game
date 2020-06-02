set home=%~dp0

cd %home%\repo\user2
git fetch
git merge --no-ff -v

