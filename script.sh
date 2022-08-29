#!/bin/sh -l

body=$(cat RandomTxtFile.txt)
echo ::set-output name=body::$body