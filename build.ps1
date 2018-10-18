#!/usr/bin/env pwsh

docker build --pull -t ligaturizer .

docker run --rm -v "$($pwd.Path -replace '^|\\+','/' -replace ':')/input/consola.ttf:/input" -v "$($pwd.Path -replace '^|\\+','/' -replace ':')/output:/output" ligaturizer