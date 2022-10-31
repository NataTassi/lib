#!/bin/bash

: '
    This command downloads an entire website with wget
    
    The used options are:
    --recursive: download the entire Web site.
    --domains website.org: do not follow links outside website.org.
    --no-parent: do not follow links outside the directory tutorials/html/.
    --page-requisites: get all the elements that compose the page (images, CSS and so on).
    --html-extension: save files with the .html extension.
    --convert-links: convert links so that they work locally, off-line.
    --restrict-file-names=windows: modify filenames so that they will work in Windows as well.
'

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <url>"
    exit 0
fi

url=$1
url_no_protocol=${url#*"://"}
domain=${url_no_protocol%%"/"*}

wget -q \
     --recursive \
     --page-requisites \
     --html-extension \
     --convert-links \
     --restrict-file-names=windows \
     --domains $domain \
     --no-parent \
        $url
