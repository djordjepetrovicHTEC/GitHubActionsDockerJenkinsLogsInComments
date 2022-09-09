#!/bin/sh -l

body=$(cat PRCommentLog.txt)
#body=$(cat PRCommentLog.txt)
echo ::set-output name=body::$body