#!/usr/bin/env python3

import sys

line_to_comment = {"user": 1, "dev": 0}[sys.argv[1]]

for filename in sys.argv[2:]:
    with open(filename) as f:
        lines = f.readlines()
        if len(lines) < 2:
            continue
        lines[0] = lines[0].removeprefix("//").lstrip()
        lines[1] = lines[1].removeprefix("//").lstrip()
        lines[line_to_comment] = "// " + lines[line_to_comment]
    with open(filename, "w") as f:
        f.writelines(lines)
