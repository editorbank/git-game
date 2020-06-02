@set user_name=%~1
@set user_from=%~2

@if not defined user_name goto :eof
@if not defined user_from goto :eof
@set repo_from=.\repo\%user_from%
@if not exist %repo_from% goto :eof

@set repo_dir=.\repo\%user_name%
@if exist %repo_dir% rd /S /Q %repo_dir%
git clone %repo_from% %repo_dir%

@pushd %repo_dir%
git config user.name %user_name%
@popd
