#/bin/bash

##################
# CLEANUP SYSTEM #
##################

COIN=$1
IMAGE=$2
VERSION=$3
GIT=$4
USER=$5

printf "CLEANUP SYSTEM\n"
printf "Coin: ${COIN}\n"
printf "Image: ${IMAGE}\n"
printf "Version: ${VERSION}\n"
printf "GitHub: ${GIT}\n"

# Step 1: Remove Git Repository
REPO=$(echo ${GIT} | cut -d "/" -f 1)
PROJECT=$(echo ${GIT} | cut -d "/" -f 2)
cd ${REPO}
rm -rf ${PROJECT}

# Step 2: Stopping running Docker Container
LOCAL=$(echo ${IMAGE} | cut -d "/" -f 2)
docker stop ${LOCAL}
docker rm ${LOCAL}

# Step 3: Remove Docker User
rm -rf /home/${USER}

# Step 4: Remove tagged Docker Images
docker rmi ${IMAGE}:${VERSION}
docker rmi ${LOCAL}:${VERSION}

# Step 5: Remove unused (dangling) images
docker ps --filter "status=exited" | grep 'weeks ago' | awk '{print $1}' | xargs --no-run-if-empty docker rm
docker image prune -f
