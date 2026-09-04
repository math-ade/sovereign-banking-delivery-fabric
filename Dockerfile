# Base Enterprise Tomcat Engine
FROM tomcat:10-jdk17-openjdk-slim

LABEL maintainer="Adetunji Mathew Babatunde <adetunjimathewbabatunde@ymail.com>"

# Strip default root applications to prevent vulnerabilities
RUN rm -rf /usr/local/tomcat/webapps/*

# Inject compiled corporate financial archive
COPY target/transaction-ledger.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
