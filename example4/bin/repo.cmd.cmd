@set user_name=%~1
@set user_cmd=%~2

@if not defined user_name goto :eof
@if not defined user_cmd  goto :eof

@set repo_dir=.\repo\%user_name%
@if not exist "%repo_dir%" goto :eof
@pushd %repo_dir%
  %user_cmd%
@popd
