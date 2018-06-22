#/bin/bash

#####################
# PUBLISH NEW IMAGE #
#####################

COIN=$1
IMAGE=$2
VERSION=$3

printf "PUBLISH NEW IMAGE\n"
printf "Coin: ${COIN}\n"
printf "Image: ${IMAGE}\n"
printf "Version: ${VERSION}\n"

# Step 4: Push new Docker Image to DockerHub
LOCAL=$(echo ${IMAGE} | cut -d "/" -f 2)
docker tag ${LOCAL} ${IMAGE}:${VERSION}
docker push ${IMAGE}:${VERSION}
