#!/usr/bin/python

import os
import sys

def rename_files(path, substring, replacement):
    if os.path.isdir(path):
        for file in os.listdir(path):
            rename_files(os.path.join(path, file), substring, replacement)

    basename = os.path.basename(path)

    if substring in basename:
        new_basename = basename.replace(substring, replacement)
        new_path = os.path.join(os.path.dirname(path), new_basename)
        os.rename(path, new_path)
        print(new_path)


if __name__ == '__main__':
    if len(sys.argv) != 4:
        print(f"Usage: {sys.argv[0]} <path> <substring> <replacement>" )
    else:
        rename_files(os.path.normpath(sys.argv[1]), sys.argv[2], sys.argv[3])

