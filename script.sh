#!/bin/sh -l

body=$(cat PRCommentLog.txt | sed 's/^ >[ \t]*//;s/[ \t]*$//')
#body=$(cat PRCommentLog.txt)
echo ::set-output name=body::$body