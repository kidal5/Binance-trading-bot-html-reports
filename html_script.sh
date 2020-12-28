#!/bin/bash

cp ../binance_new/logs/data.log
jupyter nbconvert --to notebook --execute generator.ipynb
jupyter nbconvert --to html generator.nbconvert.ipynb --TagRemovePreprocessor.remove_cell_tags "remove_cell" --TagRemovePreprocessor.remove_input_tags "remove_input"
rm generator.nbconvert.ipynb
rm data.log
git add .
git commit -m "new version"
git push

