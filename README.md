# docker-ligaturizer
Run [ligaturizer][1] via container

## Font

Recent ligaturized version of Consolas can be found in Releases. The releases are tagged with the version of FiraCode used to build the release. All rights for Consolas and Consolas Ligaturized belong to their respective owners. The version presented here is only for demonstration purposes and if you don't have rights to use original Consolas font you can't use the one present here.

## Font Installation

### Windows

Open `Control Panel -> Fonts` and drag-n-drop the font.

### Linux

For Linux instructions please refer to the instructions of your particular Linux distribution. You can also have a look [at this article][3] which has some explanation and guidance.

## Usage

Create an output directory called `/output`. Create and run the one time use container and get your new font from the `/output` folder.

### Bash

`docker run --rm -v $(pwd)/your-font.ttf:/input -v $(pwd)/output:/output --user $(id -u) rfvgyhn/ligaturizer`

### Powershell

`docker run --rm -v "$($pwd.Path -replace '^|\\+','/' -replace ':')/your-font.ttf:/input" -v "$($pwd.Path -replace '^|\\+','/' -replace ':')/output:/output" rfvgyhn/ligaturizer`

## Volumes

* `/input` The font to be ligaturized
* `/output` Resulting ligaturized font directory

## Options

The following environment variables are available. The values show the defaults used if the var isn't specified.

* `PREFIX=` Prefix to be used when naming the new font (e.g. consola.ttf -> ligaturizedConsolas.ttf)
* `OUTPUT_NAME=` Resulting font name (defaults to "_fontName_ Ligaturized")

# Example

Ligaturized Consolas

![Ligaturized Consolas][2]

[1]: https://github.com/ToxicFrog/Ligaturizer
[2]: screenshots/consolas-ligaturized.png
[3]: https://medium.com/source-words/how-to-manually-install-update-and-uninstall-fonts-on-linux-a8d09a3853b0