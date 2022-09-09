#!/bin/bash
exec > /home/htec11090/actions-runner2/_work/GitHubActionsDockerJenkinsLogsInComments/GitHubActionsDockerJenkinsLogsInComments/finishedFile.txt
cat PRCommentLog.txt | sed 's/^ >[ \t]*//;s/[ \t]*$//'