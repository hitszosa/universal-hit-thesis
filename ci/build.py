#!/usr/bin/env python3

import os
import glob
import subprocess
from pathlib import Path

os.makedirs("build", exist_ok=True)

template_files = glob.glob("templates/*.typ")
file_basenames = [Path(f).stem for f in template_files]

for basename in file_basenames:
    input_file = f"templates/{basename}.typ"
    output_file = f"build/{basename}.pdf"

    subprocess.run(["typst", "compile", input_file, output_file, "--root", "."])
