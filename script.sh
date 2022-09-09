#!/bin/sh -l
body=$(cat finishedFile.txt)
echo "---------------"
#| sed 's/^ [ \t]*//;s/[ \t]*$//')
echo $body
echo "---------------"
#body=$(cat PRCommentLog.txt)
echo ::set-output name=body::$body