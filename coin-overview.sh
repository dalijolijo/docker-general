#!/bin/bash

######################################
# TO BUILD AND PUPLISH DOCKER IMAGES #
######################################
# 0 => no  #
# 1 => yes #
############
BUILD_BTX=1
PUBLISH_BTX=0
BUILD_BTDX=1
PUBLISH_BTDX=0
BUILD_BSD=1
PUBLISH_BSD=0
BUILD_MEC=1
PUBLISH_MEC=0
BUILD_GRV=1
PUBLISH_GRV=0
BUILD_XUEZ=1
PUBLISH_XUEZ=0

##################
# CLEANUP SYSTEM #
##################
CLEAN_BTX=1
CLEAN_BTDX=1
CLEAN_BSD=1
CLEAN_MEC=1
CLEAN_GRV=1
CLEAN_XUEZ=1

################
# Preperations #
################
DOCKER_USER="dalijolijo"
chmod 755 docker-build.sh
chmod 755 docker-publish.sh
chmod 755 docker-cleanup.sh
printf "Login to DockerHub with ${DOCKER_USER}\n"
docker login -u ${DOCKER_USER}
docker pull ubuntu:16.04

#################
# Bitcore (BTX) #
#################
COIN="BTX"
IMAGE_D="dalijolijo/btx-rpc-server"
IMAGE_L="limxtec/btx-rpc-server"
VER_LATEST="latest"
VERSION_X="0.15.0.3"
GIT_D="dalijolijo/Bitcore-BTX-RPC-Installer"
GIT_L="limxtec/Bitcore-BTX-RPC-Installer"

if [ ${BUILD_BTX} -eq 1 ]; then
  ##dalijolijo
  ./docker-build.sh ${COIN} ${IMAGE_D} ${VER_LATEST} ${GIT_D}
  ##LIMXTEC
  #./docker-build.sh ${COIN} ${IMAGE_L} ${VER_LATEST} ${GIT_L}
fi

if [ ${PUBLISH_BTX} -eq 1 ]; then
  ##dalijolijo
  ./docker-publish.sh ${COIN} ${IMAGE_D} ${VER_LATEST}
  ./docker-publish.sh ${COIN} ${IMAGE_D} ${VERSION_X}
  ##LIMXTEC
  ./docker-publish.sh ${COIN} ${IMAGE_L} ${VER_LATEST}
  ./docker-publish.sh ${COIN} ${IMAGE_L} ${VERSION_X}
fi

if [ ${CLEAN_BTX} -eq 1 ]; then
  ##dalijolijo
  ./docker-cleanup.sh ${COIN} ${IMAGE_D} ${VER_LATEST} ${GIT_D}
  ##LIMXTEC
  ./docker-cleanup.sh ${COIN} ${IMAGE_L} ${VER_LATEST} ${GIT_L}
fi

###################
# Bitcloud (BTDX) #
###################
COIN="BTDX"
IMAGE_D="dalijolijo/btdx-masternode"
IMAGE_L="limxtec/btdx-masternode"
VER_LATEST="latest"
VERSION_X="2.0.2.0"
GIT_D="dalijolijo/BTDX-Masternode-Setup"
GIT_L="limxtec/BTDX-Masternode-Setup"

if [ ${BUILD_BTDX} -eq 1 ]; then
  ##dalijolijo
  ./docker-build.sh ${COIN} ${IMAGE_D} ${VER_LATEST} ${GIT_D}
  ##LIMXTEC
  #./docker-build.sh ${COIN} ${IMAGE_L} ${VER_LATEST} ${GIT_L}
fi

if [ ${PUBLISH_BTDX} -eq 1 ]; then
  ##dalijolijo
  ./docker-publish.sh ${COIN} ${IMAGE_D} ${VER_LATEST}
  ./docker-publish.sh ${COIN} ${IMAGE_D} ${VERSION_X}
  ##LIMXTEC
  ./docker-publish.sh ${COIN} ${IMAGE_L} ${VER_LATEST}
  ./docker-publish.sh ${COIN} ${IMAGE_L} ${VERSION_X}
fi

if [ ${CLEAN_BTDX} -eq 1 ]; then
  ##dalijolijo
  ./docker-cleanup.sh ${COIN} ${IMAGE_D} ${VER_LATEST} ${GIT_D}
  ##LIMXTEC
  ./docker-cleanup.sh ${COIN} ${IMAGE_L} ${VER_LATEST} ${GIT_L}
fi

#################
# Bitsend (BSD) #
#################
COIN="BSD"
IMAGE_D="dalijolijo/bsd-masternode"
IMAGE_L="limxtec/bsd-masternode"
VER_LATEST="latest"
VERSION_X="0.14.0.5"
GIT_D="dalijolijo/BSD-Masternode-Setup"
GIT_L="limxtec/BSD-Masternode-Setup"

if [ ${BUILD_BSD} -eq 1 ]; then
  ##dalijolijo
  ./docker-build.sh ${COIN} ${IMAGE_D} ${VER_LATEST} ${GIT_D}
  ##LIMXTEC
  #./docker-build.sh ${COIN} ${IMAGE_L} ${VER_LATEST} ${GIT_L}
fi

if [ ${PUBLISH_BSD} -eq 1 ]; then
  ##dalijolijo
  ./docker-publish.sh ${COIN} ${IMAGE_D} ${VER_LATEST}
  ./docker-publish.sh ${COIN} ${IMAGE_D} ${VERSION_X}
  ##LIMXTEC
  ./docker-publish.sh ${COIN} ${IMAGE_L} ${VER_LATEST}
  ./docker-publish.sh ${COIN} ${IMAGE_L} ${VERSION_X}
fi

if [ ${CLEAN_BSD} -eq 1 ]; then
  ##dalijolijo
  ./docker-cleanup.sh ${COIN} ${IMAGE_D} ${VER_LATEST} ${GIT_D}
  ##LIMXTEC
  ./docker-cleanup.sh ${COIN} ${IMAGE_L} ${VER_LATEST} ${GIT_L}
fi

##################
# Megacoin (MEC) #
##################
COIN="MEC"
IMAGE_D="dalijolijo/mec-rpc-server"
IMAGE_L="limxtec/mec-rpc-server"
VERS_LATEST="latest"
VERSION_X="0.15.0.3"
GIT_D="dalijolijo/Megacoin-MEC-RPC-Installer"
GIT_L="limxtec/Megacoin-MEC-RPC-Installer"

if [ ${BUILD_MEC} -eq 1 ]; then
  ##dalijolijo
  ./docker-build.sh ${COIN} ${IMAGE_D} ${VER_LATEST} ${GIT_D}
  ##LIMXTEC
  #./docker-build.sh ${COIN} ${IMAGE_L} ${VER_LATEST} ${GIT_L}
fi

if [ ${PUBLISH_MEC} -eq 1 ]; then
  ##dalijolijo
  ./docker-publish.sh ${COIN} ${IMAGE_D} ${VER_LATEST}
  ./docker-publish.sh ${COIN} ${IMAGE_D} ${VERSION_X}
  ##LIMXTEC
  ./docker-publish.sh ${COIN} ${IMAGE_L} ${VER_LATEST}
  ./docker-publish.sh ${COIN} ${IMAGE_L} ${VERSION_X}
fi

if [ ${CLEAN_MEC} -eq 1 ]; then
  ##dalijolijo
  ./docker-cleanup.sh ${COIN} ${IMAGE_D} ${VER_LATEST} ${GIT_D}
  ##LIMXTEC
  ./docker-cleanup.sh ${COIN} ${IMAGE_L} ${VER_LATEST} ${GIT_L}
fi

#################
# Gravium (GRV) #
#################
COIN="GRV"
IMAGE_D="dalijolijo/grv-masternode"
VER_LATEST="latest"
VERSION_X="1.0.2.1"
GIT_D="dalijolijo/GRV-Masternode-Setup"

if [ ${BUILD_GRV} -eq 1 ]; then
  ##dalijolijo
  ./docker-build.sh ${COIN} ${IMAGE_D} ${VER_LATEST} ${GIT_D}
fi

if [ ${PUBLISH_GRV} -eq 1 ]; then
  ##dalijolijo
  ./docker-publish.sh ${COIN} ${IMAGE_D} ${VER_LATEST}
  ./docker-publish.sh ${COIN} ${IMAGE_D} ${VERSION_X}
fi

if [ ${CLEAN_GRV} -eq 1 ]; then
  ##dalijolijo
  ./docker-cleanup.sh ${COIN} ${IMAGE_D} ${VER_LATEST} ${GIT_D}
fi

###############
# XUEZ (XUEZ) #
###############
COIN="XUEZ"
IMAGE_D="dalijolijo/xuez-masternode"
VERS_LATEST="latest"
VERSION_X="1.0.1.9"
GIT_D="dalijolijo/XUEZ-Masternode-Setup"

if [ ${BUILD_XUEZ} -eq 1 ]; then
  ##dalijolijo
  ./docker-build.sh ${COIN} ${IMAGE_D} ${VER_LATEST} ${GIT_D}
fi

if [ ${PUBLISH_XUEZ} -eq 1 ]; then
  ##dalijolijo
  ./docker-publish.sh ${COIN} ${IMAGE_D} ${VER_LATEST}
  ./docker-publish.sh ${COIN} ${IMAGE_D} ${VERSION_X}
fi

if [ ${CLEAN_BXUEZ} -eq 1 ]; then
  ##dalijolijo
  ./docker-cleanup.sh ${COIN} ${IMAGE_D} ${VER_LATEST} ${GIT_D}
fi
