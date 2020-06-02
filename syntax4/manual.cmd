set home=%~dp0

if not exist %home%\repo\user2 call build
cd %home%\repo\user2
git fetch && git merge --no-ff -v
if errorlevel 1 (
  xcopy /R /Y /E %home%\src\user1+user2
  git add . &&git commit -m "manual resolve conflict"
)
git push && color 2 && echo OK
