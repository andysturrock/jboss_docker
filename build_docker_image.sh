#!/bin/bash -x

echo 0=$0
BASENAME=`basename $0`
cp $0 /tmp/save_${BASENAME}
exit

id
groups
whoami
env

WORKSPACE=${WORKSPACE:-`pwd`}

cp ${WORKSPACE}/target/jboss_docker.war ${WORKSPACE}/Dockerfiles

docker build -t andysturrock/centos:jboss-eap-helloworld ${WORKSPACE}/Dockerfiles

rm ${WORKSPACE}/Dockerfiles/jboss_docker.war
