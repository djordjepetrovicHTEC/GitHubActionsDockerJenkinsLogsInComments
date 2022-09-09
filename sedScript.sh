#!/bin/bash
exec > exec > /home/htec11090/actions-runner2/_work/GitHubActionsDockerJenkinsLogsInComments/GitHubActionsDockerJenkinsLogsInComments/PRCommentLog.txt
cat PRCommentLog.txt | sed 's/^ >[ \t]*//;s/[ \t]*$//'