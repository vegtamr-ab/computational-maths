#!/bin/sh

git pull
cd ./computational-maths/src/

for tex in ./*.tex
do
    latexmk -pdf "$tex"
done

for pdf in ./*.pdf
do
    cp "$pdf" ../pdf/
done

cd ../../mathematical-modeling/src/

for tex in ./*.tex
do
    latexmk -pdf "$tex"
done

for pdf in ./*.pdf
do
    cp "$pdf" ../pdf/
done

cd ../../

git add computational-maths/pdf/ mathematical-modeling/pdf/
git commit -m "Updated PDFs."
git push
