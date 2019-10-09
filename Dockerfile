FROM ubuntu
RUN apt-get update && apt-get install -y openjdk-8-jdk
WORKDIR /
COPY hello.java ./Hello.java
RUN javac Hello.java
ENTRYPOINT ["java","Hello"]
