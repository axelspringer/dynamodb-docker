FROM java:openjdk-9-jdk
MAINTAINER sebastian.doell@axelspringer.de

ARG HOME
ARG DB

ENV \
    HOME ${HOME:-/var/lib/dynamodb}

WORKDIR $HOME

# download latest dynamo
RUN \
    wget -qO- http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest.tar.gz | tar xvz -C $HOME

# entry
ENTRYPOINT ["/usr/bin/java", "-Djava.library.path=.", "-jar", "DynamoDBLocal.jar"]
CMD ["-port", "8000", "-inMemory"]

# allowing database to be mounted
VOLUME ['/var/lib/dynamodb']

# exposed ports
EXPOSE 8000
