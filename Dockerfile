FROM tomcat:8.0
RUN apt-get update
RUN apt-get install -y maven
RUN apt-get install -y default-jdk
RUN apt-get install -y git
RUN mkdir /root/boxfuse-sample-java-war-hello/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /root/boxfuse-sample-java-war-hello/
RUN cd /root/boxfuse-sample-java-war-hello/ && mvn package
RUN cp /root/boxfuse-sample-java-war-hello/target/hello-1.0.war /usr/local/tomcat/webapps/hello-1.0.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
