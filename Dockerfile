#docker.io sgaide/docker-arm-jdk8-gradle3

FROM larmog/armhf-alpine-java:jdk-8u73

ENV GRADLE_VERSION 3.0

RUN cd /opt && \
        apk -Uuv add curl && \
        curl -jkSL -o gradle.zip https://downloads.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip && unzip gradle.zip -d /opt && rm gradle.zip && \
        ln -s /opt/gradle-${GRADLE_VERSION} /opt/gradle &&\
        rm /var/cache/apk/*

ENV PATH ${PATH}:/opt/gradle/bin
