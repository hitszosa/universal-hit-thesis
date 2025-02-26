#!/usr/bin/env python3

import os
import glob
import sys

line_to_comment = {"user": 1, "dev": 0}[sys.argv[1]]

filenames = []

for path in sys.argv[2:]:
    if os.path.isdir(path):
        filenames.extend(glob.glob(os.path.join(path, "*.typ")))
    else:
        filenames.append(path)

for filename in filenames:
    with open(filename) as f:
        lines = f.readlines()
        if len(lines) < 2:
            continue
        lines[0] = lines[0].removeprefix("//").lstrip()
        lines[1] = lines[1].removeprefix("//").lstrip()
        lines[line_to_comment] = "// " + lines[line_to_comment]
    with open(filename, "w") as f:
        f.writelines(lines)
