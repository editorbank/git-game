set home=%CD%

cd %home%\repo\user2
git fetch
git merge --no-ff -v

cd %home%
