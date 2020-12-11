FROM openjdk:11

RUN cd /opt && wget https://structure101.com/binaries/structure101-build-java-all-5.0.15424.zip && unzip structure101*.zip && rm structure101*.zip && mv structure101* structure101

USER 1001:1001

VOLUME /etc/structure101

WORKDIR /etc/structure101

ENTRYPOINT ["sh", "-c", "java -Ds101.label=$LABEL -jar /opt/structure101/structure101-java-build.jar /etc/structure101/config.xml"]
