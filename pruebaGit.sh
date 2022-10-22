#!/bin/bash

git init
echo "Pega la linea: git remote add origin https://github.com/usuario/Repositorio.git"
read origin
git remote add origin $origin
git add .
git commit -m "first commit"
git push -u origin master 