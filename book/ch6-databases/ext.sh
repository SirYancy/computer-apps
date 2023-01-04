#!/bin/bash
old_ext="md"
new_ext="md.bak"

for file in *.$old_ext
do
    mv -v "$file" "${file%.$old_ext}.$new_ext"
done;
