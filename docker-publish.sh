#/bin/bash

# screen docker-publish.sh ${COIN} ${IMAGE_D} ${VER_LATEST} ${GIT_D}
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

# Step 2: Build new local Docker Image
docker build -t ${IMAGE} .

# Step 3: Push new Docker Image to DockerHub
docker push ${IMAGE}

