@set user_name=%~1
@set src_dir=%~2

@if not defined user_name goto :eof
@set repo_dir=.\repo\%user_name%
@if not exist "%repo_dir%" goto :eof

@if not defined src_dir set src_dir=.\src\%user_name%
@if not exist "%src_dir%" goto :eof

xcopy /R /Y /E "%src_dir%" "%repo_dir%"
@pushd "%repo_dir%"
  git add . && git commit -m "changes from %user_name%"
@popd
