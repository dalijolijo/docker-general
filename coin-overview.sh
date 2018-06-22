#!/bin/bash

##############
#Preperations#
##############
chmod 755 docker-publish.sh
docker pull ubuntu:16.04


##########
#TO BUILD#
############
# 0 => no  #
# 1 => yes #
############
BUILD_BTX=1
BUILD_BTDX=1
BUILD_BSD=1
BUILD_MEC=1
BUILD_GRV=1
BUILD_XUEZ=1


###############
#Bitcore (BTX)#
###############
COIN="BTX"
IMAGE_D="dalijolijo/btx-rpc-server"
IMAGE_L="limxtec/btx-rpc-server"
VER_LATEST="latest"
VERSION_X="0.15.0.3"
GIT_D="dalijolijo/Bitcore-BTX-RPC-Installer"
GIT_L="limxtec/Bitcore-BTX-RPC-Installer"

if [ ${BUILD_BTX} -eq 1 ]; then
  screen docker pull ${IMAGE_D}
  ##dalijolijo
  screen docker-publish.sh ${COIN} ${IMAGE_D} ${VER_LATEST} ${GIT_D}
  screen docker-publish.sh ${COIN} ${IMAGE_D} ${VERSION_X} ${GIT_D}
  ##LIMXTEC
  screen docker-publish.sh ${COIN} ${IMAGE_L} ${VER_LATEST} ${GIT_L}
  screen docker-publish.sh ${COIN} ${IMAGE_L} ${VERSION_X} ${GIT_L}
fi


#################
#Bitcloud (BTDX)#
#################
COIN="BTDX"
IMAGE_D="dalijolijo/btdx-masternode"
IMAGE_L="limxtec/btdx-masternode"
VER_LATEST="latest"
VERSION_X="2.0.2.0"
GIT_D="dalijolijo/BTDX-Masternode-Setup"
GIT_L="limxtec/BTDX-Masternode-Setup"

if [ ${BUILD_BTDX} -eq 1 ]; then
  screen docker pull ${IMAGE_D}
  ##dalijolijo
  screen docker-publish.sh ${COIN} ${IMAGE_D} ${VER_LATEST} ${GIT_D}
  screen docker-publish.sh ${COIN} ${IMAGE_D} ${VERSION_X} ${GIT_D}
  ##LIMXTEC
  screen docker-publish.sh ${COIN} ${IMAGE_L} ${VER_LATEST} ${GIT_L}
  screen docker-publish.sh ${COIN} ${IMAGE_L} ${VERSION_X} ${GIT_L}
fi


###############
#Bitsend (BSD)#
###############
COIN="BSD"
IMAGE_D="dalijolijo/bsd-masternode"
IMAGE_L="limxtec/bsd-masternode"
VER_LATEST="latest"
VERSION_X="0.14.0.5"
GIT_D="dalijolijo/BSD-Masternode-Setup"
GIT_L="limxtec/BSD-Masternode-Setup"

if [ ${BUILD_BSD} -eq 1 ]; then
  screen docker pull ${IMAGE_D}
  ##dalijolijo
  screen docker-publish.sh ${COIN} ${IMAGE_D} ${VER_LATEST} ${GIT_D}
  screen docker-publish.sh ${COIN} ${IMAGE_D} ${VERSION_X} ${GIT_D}
  ##LIMXTEC
  screen docker-publish.sh ${COIN} ${IMAGE_L} ${VER_LATEST} ${GIT_L}
  screen docker-publish.sh ${COIN} ${IMAGE_L} ${VERSION_X} ${GIT_L}
fi


################
#Megacoin (MEC)#
################
COIN="MEC"
IMAGE_D="dalijolijo/mec-rpc-server"
IMAGE_L="limxtec/mec-rpc-server"
VERS_LATEST="latest"
VERSION_X="0.15.0.3"
GIT_D="dalijolijo/Megacoin-MEC-RPC-Installer"
GIT_L="limxtec/Megacoin-MEC-RPC-Installer"

if [ ${BUILD_MEC} -eq 1 ]; then
  screen docker pull ${IMAGE_D}
  ##dalijolijo
  screen docker-publish.sh ${COIN} ${IMAGE_D} ${VER_LATEST} ${GIT_D}
  screen docker-publish.sh ${COIN} ${IMAGE_D} ${VERSION_X} ${GIT_D}
  ##LIMXTEC
  screen docker-publish.sh ${COIN} ${IMAGE_L} ${VER_LATEST} ${GIT_L}
  screen docker-publish.sh ${COIN} ${IMAGE_L} ${VERSION_X} ${GIT_L}
fi


###############
#Gravium (GRV)#
###############
COIN="GRV"
IMAGE_D="dalijolijo/grv-masternode"
VER_LATEST="latest"
VERSION_X=""
GIT_D="dalijolijo/GRV-Masternode-Setup"

if [ ${BUILD_GRV} -eq 1 ]; then
  screen docker pull ${IMAGE_D}
  ##dalijolijo
  screen docker-publish.sh ${COIN} ${IMAGE_D} ${VER_LATEST} ${GIT_D}
  screen docker-publish.sh ${COIN} ${IMAGE_D} ${VERSION_X} ${GIT_D}
fi


######
#XUEZ#
######
COIN="XUEZ"
IMAGE_D="dalijolijo/xuez-masternode"
VERS_LATEST="latest"
VERSION_X=""
GIT_D="dalijolijo/XUEZ-Masternode-Setup"

if [ ${BUILD_XUEZ} -eq 1 ]; then
  screen docker pull ${IMAGE_D}
  ##dalijolijo
  screen docker-publish.sh ${COIN} ${IMAGE_D} ${VER_LATEST} ${GIT_D}
  screen docker-publish.sh ${COIN} ${IMAGE_D} ${VERSION_X} ${GIT_D}
fi
