#!/bin/sh

echo "Add files and do local commit"
git add .
git commit -am "Welcome to Terrafom on Goole Cloud"

echo "Pushing to Github Repository"
git push origin main
