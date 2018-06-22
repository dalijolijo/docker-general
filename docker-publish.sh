#/bin/bash

###################
# BUILD NEW IMAGE #
###################

COIN=$1
IMAGE=$2
VERSION=$3
GIT=$4

printf "Coin: ${COIN}\n"
printf "Image: ${IMAGE}\n"
printf "Version: ${VERSION}\n"
printf "GitHub: ${GIT}\n"

# Step 1: Clone Git Repo
REPO=$(echo ${GIT} | cut -d "/" -f 1)
PROJECT=$(echo ${GIT} | cut -d "/" -f 2)
mkdir ${REPO}
cd ${REPO}
rm -rf ${PROJECT}
git clone https://github.com/${GIT}.git

# Step 2: Pull latest version
docker pull ${IMAGE}

# Step 3: Build new local Docker Image
cd ${PROJECT}
LOCAL=$(echo ${IMAGE} | cut -d "/" -f 2)
docker build -t ${LOCAL} .

# Step 4: Push new Docker Image to DockerHub
docker tag ${LOCAL} ${IMAGE}:${VERSION}
docker push ${IMAGE}:${VERSION}
