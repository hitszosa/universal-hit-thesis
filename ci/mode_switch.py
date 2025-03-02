#!/usr/bin/env python3

import os
import glob
import sys

mode_to_comment = { "user": "<#用户使用>", "dev": "<#模板开发>", "local": "<#本地部署>" }

line_to_comment = mode_to_comment[sys.argv[1]]

filenames = []

for path in sys.argv[2:]:
    if os.path.isdir(path):
        filenames.extend(glob.glob(os.path.join(path, "*.typ")))
    else:
        filenames.append(path)

for filename in filenames:
    with open(filename) as f:
        lines = f.readlines()
        for i, line in enumerate(lines):
            found_comment = None
            for comment in mode_to_comment.values():
                if comment in line:
                    found_comment = comment
                    break
            if found_comment is not None:
                if found_comment == line_to_comment:
                    lines[i] = lines[i].removeprefix("//").lstrip()
                else:
                    if not line.startswith("//"):
                        lines[i] = "//" + lines[i]
    with open(filename, "w") as f:
        f.writelines(lines)
