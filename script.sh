#!/bin/sh -l
#cat PRCommentLog.txt
body=$(cat PRCommentLog.txt)
#| sed 's/^ [ \t]*//;s/[ \t]*$//')
echo $body
#body=$(cat PRCommentLog.txt)
echo ::set-output name=body::$body