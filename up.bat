@echo off
set REPO_NAME=SecHex-Spoofy
set GITHUB_USER=sechexhwid

echo === Inicializando repo Git ===
git init

echo === Configurando rama main ===
git branch -M main

echo === Creando .gitignore si no existe ===
if not exist .gitignore (
    echo .vs/> .gitignore
    echo bin/>> .gitignore
    echo obj/>> .gitignore
)

echo === Añadiendo archivos ===
git add .
git commit -m "Initial commit"

echo === Creando repositorio en GitHub ===
gh repo create %REPO_NAME% --public --source=. --remote=origin --push

echo === DONE ===
pause
