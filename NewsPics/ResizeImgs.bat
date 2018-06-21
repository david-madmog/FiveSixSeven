@echo off

rem This batch file uses a GIMP script to resize images to 400
rem GIMP script can be found at:
rem   C:\Users\davidp\.gimp-2.8\scripts
rem
rem NOTE: image size Will only act on PNG's

cd C:\Program Files\GIMP 2\bin

gimp-2.8 -d -f -s -i -b "(batch-image-resize-2 \"C:\\Users\\davidp\\Documents\\GitHub\\FiveSixSeven\\NewsPics\\LYG*.jpg\" 400 )" -b "(gimp-quit 0)"


