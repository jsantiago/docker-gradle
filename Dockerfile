FROM dockerfile/java

RUN apt-get -qq update
RUN apt-get install -y wget unzip

RUN mkdir -p /opt/
WORKDIR /opt/

RUN wget http://services.gradle.org/distributions/gradle-1.11-bin.zip
RUN unzip gradle-1.11-bin.zip
ENV GRADLE_HOME /opt/gradle-1.11
ENV PATH $PATH:$GRADLE_HOME/bin

RUN mkdir -p /opt/gradle
WORKDIR /opt/gradle

# Set entrypoint + cmd to make default command 'gradle tasks'
# Any ARGs passed to run will be applied to 'gradle'
ENTRYPOINT ["gradle"]
CMD ["tasks"]
