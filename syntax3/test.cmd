set home=%~dp0

if exist %home%\repo\view rd /S /Q %home%\repo\%~n0
git clone %home%\repo\origin %home%\repo\%~n0
cd %home%\repo\%~n0
type *
@for %%I in ( *.js ) do call jjs %%I
cd %home%
