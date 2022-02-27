#!/bin/bash
for i in *.wav; do
    [ -f "$i" ] || break

    filename="${i%.*}"
    output="${filename}.mp3"
    ffmpeg -y -i $i -ab 320k -ar 48k $output
    mv $i old/$i
done
