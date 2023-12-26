#!/bin/bash

#Requirements:   sudo apt install woff-tools woff2

find . -name '*.woff' -o -name '*.woff' | while read line; do
    echo "Processing file '$line'"
    TTFFILEPATH=`echo $line | sed 's/woff/ttf/g'`
    echo "Converting to $TTFFILEPATH"
 	
    woff2sfnt $line > $TTFFILEPATH
    woff2_compress $TTFFILEPATH

    echo
done
