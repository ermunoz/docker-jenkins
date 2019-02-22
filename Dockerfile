FROM centos:7

RUN yum remove java
RUN yum install java-1.8.0-openjdk -y
RUN yum update -y
RUN yum install wget -y
RUN wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
RUN rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
RUN yum install jenkins -y
