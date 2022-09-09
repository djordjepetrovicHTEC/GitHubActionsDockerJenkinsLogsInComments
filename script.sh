#!/bin/sh -l
body=$(cat finishedFile.txt)
#| sed 's/^ [ \t]*//;s/[ \t]*$//')
echo ::set-output name=body::$body