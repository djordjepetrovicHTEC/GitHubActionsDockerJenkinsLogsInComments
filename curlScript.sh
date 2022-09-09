#!/bin/sh -l
exec > /home/htec11090/actions-runner2/_work/GitHubActionsDockerJenkinsLogsInComments/GitHubActionsDockerJenkinsLogsInComments/PRCommentLog.txt
# 2>&1

NBN=$(sudo cat /var/lib/docker/volumes/DockerJenkins/_data/jobs/test3/branches/feature-pr-branch/nextBuildNumber)
#echo "Next build number will be $NBN"
NBN=$(( $NBN -1 ))
curl -u htec11090:11aa5d3fd3133ee42af9e5c2df158efb09 "http://172.18.94.170:8080/job/test3/job/feature-pr-branch/$NBN/logText/progressiveText?start=361"

