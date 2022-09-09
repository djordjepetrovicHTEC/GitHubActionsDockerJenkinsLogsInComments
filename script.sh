#!/bin/sh -l

body=$(cat testFile.txt)
#body=$(cat PRCommentLog.txt)
echo ::set-output name=body::$body