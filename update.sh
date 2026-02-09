#!/bin/bash

git add -u
git add index.html research.html publications.html posters.html gallery.html style.css README.md CV_thiagoferreira.pdf
git add photos/* posters/*

if ! git diff --cached --quiet; then
    git commit -m "update"
    git push origin main
else
    echo "No changes to commit."
fi
