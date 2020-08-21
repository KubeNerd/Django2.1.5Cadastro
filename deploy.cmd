@echo off

title Deploy automatizado
color a

REM VALIDANDO SE O DIRETÒRIO ATUAL TEM A EXTENSÂO .GIT
echo %cd% | find /i ".git" && cls
if %errorlevel% equ 0 (
    msg /w * "Muito bem vamos comecar !"
) else (
    msg /w * "O nome do diretorio deve terminar com a extensao .git"
    exit 1
)

REM INICIALIZANDO O GIT
git init
msg /w * Sucesso na inicializacao!
timeout 1

REM CRIANDO README
copy NUL README.md
echo README.md >>README.md
msg /w * README criado !
timeout 1

REM CRIANDO GITIGNORE
copy NUL .gitignore
msg /w * GITIGNORE criado !

REM ADICIOANDO ARQUIVOS
git add .
msg /w * Arquivos adicionados !
timeout 1

REM COMITANDO ARQUIVOS
git commit -m "Deploy automatizado via batch file"
msg /w * Arquivos commitados !
timeout 1

REM SOLICITANDO ENDEREÇO
set /p repositorio="Digite o endereco para envio >"
git remote add origin %repositorio%
msg /w * Adicionado ao repositorio !

REM ENVIANDO ARQUIVOS
git push -u origin master
msg /w * Arquivos enviados !

pause