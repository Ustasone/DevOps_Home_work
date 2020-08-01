FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y default-jdk
RUN apt-get install -y maven
RUN apt-get install -y git
WORKDIR /boxfuse
RUN git clone  https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /boxfuse/boxfuse-sample-java-war-hello
RUN mvn package

