#!/bin/bash
# Setup Jenkins Project
if [ "$#" -ne 3 ]; then
    echo "Usage:"
    echo "  $0 GUID REPO CLUSTER"
    echo "  Example: $0 wkha https://github.com/redhat-gpte-devopsautomation/advdev_homework_template.git na311.openshift.opentlc.com"
    exit 1
fi

GUID=9c94
REPO=https://github.com/p-ebot/advdev-homework.git
CLUSTER=https://master.na311.openshift.opentlc.com
echo "Setting up Jenkins in project 9c94-jenkins from Git Repo https://github.com/p-ebot/advdev-homework.git for Cluster https://master.na311.openshift.opentlc.com"

# Set up Jenkins with sufficient resources
# TBD

# Create custom agent container image with skopeo
# TBD

# Create pipeline build config pointing to the ${REPO} with contextDir `openshift-tasks`
# TBD

# Make sure that Jenkins is fully up and running before proceeding!
while : ; do
  echo "Checking if Jenkins is Ready..."
  AVAILABLE_REPLICAS=$(oc get dc jenkins -n 9c94-jenkins -o=jsonpath='{.status.availableReplicas}')
  if [[ "$AVAILABLE_REPLICAS" == "1" ]]; then
    echo "...Yes. Jenkins is ready."
    break
  fi
  echo "...no. Sleeping 10 seconds."
  sleep 10
done
