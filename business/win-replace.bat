REM 注释，直接替换文件

::  %~dp0 指代 bat 脚本所在文件夹
set rootDir=%~dp0

:: 跳转临时文件夹
cd temp
REM call yarn install
:: 执行 yarn build
call yarn build

:: 拷贝文件夹 到 脚本所在的目录中
xcopy /y /E /Q /I "dist" "%rootDir%\dist"

:: 拷贝文件
copy package.json "%rootDir%\"

:: 批处理命令提示用户并等待输入一行
pause