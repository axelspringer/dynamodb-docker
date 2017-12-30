[![Build Status](https://travis-ci.org/axelspringer/mesos-agent.svg?branch=master)](https://travis-ci.org/axelspringer/mesos-agent) [![Docker Stars](https://img.shields.io/docker/stars/axelspringer/mesos-agent.svg)](https://hub.docker.com/r/axelspringer/mesos-agent/) [![Docker Pulls](https://img.shields.io/docker/pulls/axelspringer/mesos-agent.svg)](https://hub.docker.com/r/axelspringer/mesos-agent/)

# dynamodb

DynamoDB

https://aws.amazon.com/de/dynamodb/

# use

[![](https://badge.imagelayers.io/axelspringer/dynamodb:latest.svg)](https://imagelayers.io/?images=axelspringer/dynamodb:latest)

```bash
# to run an ephemeral instance of DynamoDB
docker run -d --rm --name dynamodb -p 8000:8000 -it axelspringer/dynamodb
```

You can access the DynamoDB shell at [http://localhost:8000/shell](http://localhost:8000/shell).

```
# or create a docker volume
docker create volume db
# attach the docker volume to the docker and persist data
docker run -d --rm -v db:/data:rw --name dynamodb -p 8000:8000 -it axelspringer/dynamodb -dbPath /data
```

# License
[MIT](/LICENSE)