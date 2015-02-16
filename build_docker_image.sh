#!/bin/bash

WORKSPACE=${WORKSPACE:-`pwd`}

cp ${WORKSPACE}/target/jboss_docker.war ${WORKSPACE}/Dockerfiles

docker build -t andysturrock/centos:jboss-eap-helloworld ${WORKSPACE}/Dockerfiles

rm ${WORKSPACE}/Dockerfiles/jboss_docker.war
