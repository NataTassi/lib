#!/usr/bin/python3

import qrcode
from sys import argv

if len(argv) != 2:
	print(f"Usage: {argv[0]} <data>")
else:
	img = qrcode.make(argv[1])
	img.save("img.png")

