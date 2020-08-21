@echo off

TITLE AutoPuSH
COLOR a

REM Iniciando git
git init

REM Auto execução adiciondo novos arquivos
git add .

REM Auto execução Comittando arquivos
git commit -m "Auto Push Atualizando Arquivos"

REM Auto execução push dos arquivos
git push

timeout 10

exit 0

pause >nul
del nul