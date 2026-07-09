@echo off

echo Converting all PDFs in this folder to SVG...

for %%f in (*.pdf) do (
    echo Converting %%f...
    inkscape "%%f" --pdf-poppler --export-type=emf 
)

echo Conversion complete.
pause
