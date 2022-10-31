#!/usr/bin/python3

import cv2
from sys import argv

if len(argv) != 2:
	print(f"Usage: {argv[0]} <image>")
else:
	img = cv2.imread(argv[1])
	detector = cv2.QRCodeDetector()
	data, pts, bin_data = detector.detectAndDecode(img)
	print(data)

