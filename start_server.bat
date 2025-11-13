@echo off
cd /d "%~dp0"
echo Delhi Road Data Dashboard を起動しています...
echo.

REM Pythonの確認
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo エラー: Python がインストールされていません。
    echo.
    echo Microsoft Store から "Python" を検索してインストールするか、
    echo https://www.python.org/ からダウンロードしてください。
    echo.
    pause
    exit /b 1
)

echo Python環境: OK
echo ブラウザが自動的に開きます。開かない場合は以下のURLにアクセスしてください:
echo http://localhost:8000
echo.
echo サーバーを停止するには、この画面を閉じてください。
echo.

timeout /t 3 /nobreak >nul
start http://localhost:8000
python -m http.server 8000

pause