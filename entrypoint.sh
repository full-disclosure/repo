#!/bin/bash

# npm install markdown-styles
MD="/usr/local/lib/node_modules/markdown-styles/bin/generate-md"

rm html -rf
mkdir html
$MD --input reports/ --output html/
$MD --input README.md --output html/
mv html/README.html html/index.html
find html/ -name "*.html" -exec sed "s/href=\"assets/href=\"\/assets/g" -i {} \;
find html/ -name "*.html" -exec sed "s/href=\"..\/assets/href=\"\/assets/g" -i {} \;
mkdir html/reports
mv html/20* html/reports/

cd html
zip -r web.zip *

