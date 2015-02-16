FROM andysturrock/centos:jboss_base

ENV JBOSS_HOME /opt/jboss-eap-6.3/
ENV EAP_HOME /opt/jboss-eap-6.3/

ADD jboss_docker.war /opt/jboss-eap-6.3/standalone/deployments/

EXPOSE 8080 9990

CMD ["/opt/jboss-eap-6.3/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
