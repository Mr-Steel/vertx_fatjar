FROM centos:latest

RUN yum update -y
RUN yum install -y java-1.7.0-openjdk

ADD ${project.artifactId}-${project.version}-fat.jar /
EXPOSE 9090

CMD java -server -XX:+DoEscapeAnalysis -XX:+UseStringDeduplication -XX:+UseCompressedOops -XX:+UseG1GC -jar ${project.artifactId}-${project.version}-fat.jar
