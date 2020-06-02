call clean
set home=%CD%

md %home%\repo\origin
cd %home%\repo\origin
git init
git config receive.denyCurrentBranch ignore
git config user.name origin
git config user.email ""
xcopy /R /Y /E %home%\src\origin .
git add . && git commit -m "changes from origin"


cd %home%
git clone %home%\repo\origin %home%\repo\user1
cd %home%\repo\user1
git config user.name user1
git config user.email ""

cd %home%
git clone %home%\repo\origin %home%\repo\user2
cd %home%\repo\user2
git config user.name user2
git config user.email ""


cd %home%\repo\user1
xcopy /R /Y /E %home%\src\user1 %home%\repo\user1
git add . && git commit -m "changes from user1"

cd %home%\repo\user2
xcopy /R /Y /E %home%\src\user2 %home%\repo\user2
git add . && git commit -m "changes from user2"


cd %home%\repo\user1
git pull && git push

pause

cd %home%\repo\user2
git pull && git push

@if errorlevel 1 (
  git merge --abort  && color 4 && echo ABORT
) else (
  git push && color 2 && echo OK
)

cd %home%
