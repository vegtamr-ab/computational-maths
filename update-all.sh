#!/bin/sh

cd ./src/
git pull

for tex in ./*.tex
do
    latexmk -pdf "$tex"
done

for pdf in ./*.pdf
do
    cp "$pdf" ../pdf/
done

git add ../pdf/
git commit -m "Updated PDFs."
git push
