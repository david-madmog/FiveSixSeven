@echo off

rem This batch file uses a GIMP script to resize images to 100x100
rem GIMP script can be found at:
rem   C:\Users\davidp\.gimp-2.8\scripts
rem
rem NOTE: image size Will only act on PNG's

cd C:\Program Files\GIMP 2\bin

gimp-2.8 -d -f -s -i -b "(batch-image-resize \"C:\\Users\\davidp\\Documents\\GitHub\\FiveSixSeven\\GalleryPics\\*.jpg\" 400 )" -b "(gimp-quit 0)"


