@echo off
for /d %%a in (*) do (call :hoge "%%a")
goto end

:hoge
if not exist %~1\build\libs (exit /b)
cd %~1\build
move /Y libs\* ..\..\releases
cd ..\..
exit /b

:end
