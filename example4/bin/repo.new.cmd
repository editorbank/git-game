@set user_name=%~1
@if not defined user_name goto :eof
@set repo_dir=.\repo\%user_name%
@if exist %repo_dir% rd /S /Q %repo_dir%
@md %repo_dir%
@pushd %repo_dir%
git init
git config receive.denyCurrentBranch ignore

git config user.name %user_name%
((echo .idea/**)&(echo *.iml)) >.gitignore
git add .gitignore && git commit -m "init"
@popd
