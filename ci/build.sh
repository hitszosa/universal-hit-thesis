#!/usr/bin/env bash

file_basenames=($(basename -s .typ templates/*.typ))

mkdir -p build/

for basename in "${file_basenames[@]}"; do
    typst compile "templates/${basename}.typ" "build/${basename}.pdf" --root . --font-path fonts
done
